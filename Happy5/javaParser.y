{
module Main (main) where
import JavaAlex      -- Alex lexer
}

%name javaCode
-- javaCode :: [Token] -> T
%tokentype { Token }
%error { parseError }


%token
--    grammar symbols | token pattern
        int             { TknConstant $$ }
        ide             { TknIdentifier $$ }
        eq              { TknEq}
        incEq           { TknEqInc}
        compara         { TknComp $$}
        '('             { TknOpenParentheses }
        ')'             { TknClosedParentheses }
        '{'             { TknOpenBlock }
        '}'             { TknClosedBlock }
        if              { TknIf }
        else            { TknElse}
        while           { TknWhile}
        end             { TknEndStatement }


%nonassoc '=' '+='

%%

inizio    : blocco        { creaBlocco $1 }

blocco    : com                                                         { ListaDiComandi [$1] }
          | com blocco                                                  { aggiungiComando $1 $2 }
          | '{' blocco '}'                                              { creaBlocco $2 }
          | '{' blocco '}' blocco                                       { piuBlocchi (creaBlocco $2) $4 }
          | if '(' bool ')' '{' blocco '}' else '{' blocco '}'          { If $3 $6 $10 }
          | if '(' bool ')' '{' blocco '}' else '{' blocco '}' blocco   { piuBlocchi (If $3 (creaBlocco $6) (creaBlocco $10)) $12 }
          | while '(' bool ')' '{' blocco '}'                           { While $3 $6}
          | while '(' bool ')' '{' blocco '}' blocco                    { piuBlocchi (While $3 (creaBlocco $6)) $8 }

bool      : var                   { BoolV $1 }
          | var compara var       { BoolVC $1 $2 $3}

com       : ide eq var end         { ComAss $1 $3 }
          | ide incEq var end      { ComAssInc $1 $3 }
          | ide ide eq var end     { AssegnamentoInit $1 $2 $4}

var       : ide         { VarId $1}
          | int         { VarInt $1}

{
data Node =
      Blocco [Node]
    | ListaDiComandi [Node]
    | ComAss String Node
    | ComAssInc String Node
    | AssegnamentoInit String String Node
    | If Node Node Node
    | While Node Node
    | BoolVC Node String Node
    | BoolV Node
    | VarId String
    | VarInt Int
    deriving (Eq,Show)

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

main :: IO()
main = do   s <- readFile "input.txt"
            print (javaCode (lexer s))
}
