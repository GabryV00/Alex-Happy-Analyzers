{
module JavaAlex (Token( .. ), lexer) where
}

%wrapper "basic"

$digit = 0-9            -- digits
$alpha = [a-zA-Z]       -- alphabetic characters

@cost = $digit+
@ident = ($alpha | $digit)+
@eq = "="
@eqInc = "+="
@openP = "("
@closeP = ")"
@openB = "{"
@closeB = "}"
@ifcond = "if"
@elsecond = "else"
@whilecicle = "while"
@end = ";"
@compara = "==" | "!=" | "<=" | ">=" | "<" | ">"

actions :-

  $white                              ;
  @cost                               { \s -> TknConstant (read s)}
  @eq                                 { \s -> TknEq}
  @eqInc                              { \s -> TknEqInc}
  @compara                            { \s -> TknComp s}
  @openP                              { \s -> TknOpenParentheses}
  @closeP                             { \s -> TknClosedParentheses}
  @openB                              { \s -> TknOpenBlock}
  @closeB                             { \s -> TknClosedBlock}
  @ifcond                             { \s -> TknIf}
  @elsecond                           { \s -> TknElse}
  @whilecicle                         { \s -> TknWhile}
  @end                                { \s -> TknEndStatement}
  @ident                              { \s -> TknIdentifier s}
  .                                   ;
{

-- The token type:
data Token
        = TknConstant Int
        | TknIdentifier String
        | TknEq
        | TknEqInc
        | TknComp String
        | TknOpenParentheses
        | TknClosedParentheses
        | TknOpenBlock
        | TknClosedBlock
        | TknIf
        | TknElse
        | TknWhile
        | TknEndStatement
        deriving (Eq, Show)

lexer = alexScanTokens

main = do
  s <- getContents
  print (alexScanTokens s)
}
