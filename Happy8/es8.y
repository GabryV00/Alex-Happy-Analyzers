{
module Main (main) where
import SchemeAlex      -- Alex lexer
import qualified Data.List (reverse)
}

%name schemeCode
-- schemeCode :: [Token] -> T
%tokentype { Token }
%error { parseError }


%token
--    grammar symbols | token pattern
        int             { TknConstant $$ }
        var             { TknIdentifier $$ }
        '='             { TknEq }
        '('             { TknOpenParentheses }
        ')'             { TknClosedParentheses }
        '+'             { TknPlus }
        '-'             { TknMinus }
        '*'             { TknTimes }
        let             { TknLet }
        case            { TknCase }
        else            { TknElseCase}

%left '+' '-'
%left '*'

%%

-- Production rules for the grammar

inizio  : blocco      { creaBlocco $1 }

blocco  : espressione                                                                     { ListaDiComandi [$1] }
        | espressione blocco                                                              { aggiungiComando $1 $2 }
        | '(' blocco ')'                                                                  { creaBlocco $2 }
        | '(' let '(' var espressione ')' blocco ')'                                      { Let $4 $5 $7 }
        | '(' case '(' espressione ')' bloccoCase ')'                                     { Case $4 $6 }

bloccoCase  : '(' '(' int ')' espressione ')' bloccoCase    { BCase $3 $5 $7}
            | '(' else espressione ')'                      { ElseCase $3}


espressione : '+' espressione espressione                   { Plus $2 $3}
            | '-' espressione espressione                   { Minus $2 $3}
            | '*' espressione espressione                   { Times $2 $3}
            | '=' espressione espressione                   { Eq $2 $3}
            | '(' espressione ')'                           { $2}
            | var                                           { Var $1}
            | int                                           { Int $1}



{

data Node
          = ListaDiComandi [Node]
          | Blocco [Node]
          | Let String Node Node
          | Case Node Node
          | BCase Int Node Node
          | ElseCase Node
          | Plus Node Node
          | Minus Node Node
          | Times Node Node
          | Eq Node Node
          | Var String
          | Int Int
          deriving (Eq, Show)

creaBlocco :: Node -> Node    -- Funzione per la creazione di un blocco
creaBlocco (ListaDiComandi xs) = Blocco xs  -- Data una lista di comandi ritorna un blocco con quei comandi
creaBlocco blocco = Blocco [blocco]

piuBlocchi :: Node -> Node -> Node  -- Funzione per la concatenazione di piu blocchi
piuBlocchi blocco (ListaDiComandi xs) = ListaDiComandi (blocco:xs) -- Con un blocco e una lista di comandi, crea la lista completa di comandi
piuBlocchi blocco1 blocco2 = ListaDiComandi [blocco1,blocco2] -- Con un due blocchi, crea la lista di comandi dei due blocchi

aggiungiComando :: Node -> Node -> Node -- Funzione per l'aggiunta di un comando
aggiungiComando com (ListaDiComandi xs) = ListaDiComandi (com:xs)   -- data un comando e una lista di comandi, restituisce la lista finale di comandi
aggiungiComando com blocco = ListaDiComandi [com,blocco]  -- data un comando e blocco, restituisce la lista finale di comandi

parseError :: [Token] -> a
parseError e = error (show e ++ "!!! Parse error !!!")

main =  do
        s <- readFile "input.txt"
        print ( schemeCode( lexer s))
}
