{
module Main (main) where
}

%wrapper "basic"

$digit = 0-9            -- digits
$alpha = [a-zA-Z]       -- alphabetic characters
@multiple4 = [048] | $digit* ([02468][048] | [13579][26])    -- multiple of 4

actions :-

  @multiple4                          { \s -> TknMultiple4 (s ++ [' '])}
  .                                   ;
  $white+                             ;
{

-- The token type:
data Token
        = TknMultiple4 {val::String}
        deriving (Eq, Show)

main = do
  s <- readFile "input.txt"
  print (alexScanTokens s)
}
