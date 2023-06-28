{
module SchemeAlex (Token( .. ), lexer) where
}

%wrapper "basic"

$digit = 0-9            -- digits
$alpha = [a-zA-Z]       -- alphabetic characters

@cost = $digit+
@ident = ($alpha | $digit)+
@eq = "="
@openP = "("
@closeP = ")"
@plus = "+"
@minus = "-"
@times = "*"
@let = "let"
@cases = "case"
@elseC = "else"


actions :-

  @cost                               { \s -> TknConstant (read s)}
  @eq                                 { \s -> TknEq}
  @openP                              { \s -> TknOpenParentheses}
  @closeP                             { \s -> TknClosedParentheses}
  @plus                               { \s -> TknPlus}
  @minus                              { \s -> TknMinus}
  @times                              { \s -> TknTimes}
  @let                                { \s -> TknLet}
  @cases                              { \s -> TknCase}
  @elseC                              { \s -> TknElseCase}
  @ident                              { \s -> TknIdentifier s}
  .                                   ;
  $white+                             ;
{

-- The token type:
data Token
        = TknConstant Int
        | TknIdentifier String
        | TknEq
        | TknOpenParentheses
        | TknClosedParentheses
        | TknPlus
        | TknMinus
        | TknTimes
        | TknCase
        | TknElseCase
        | TknLet
        deriving (Eq, Show)

lexer = alexScanTokens

main = do
  s <- getContents
  print (alexScanTokens s)
}
