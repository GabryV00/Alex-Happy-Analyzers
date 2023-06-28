{
module Main (main) where
}

%wrapper "basic"

$digit = 0-9            -- digits
$alphaHex = [a-fA-F]
$digitOtt = 0-7
@dec = $digit+ | ("+" | "-")$digit+
@hex = "0x"($digit|$alphaHex)+|($digit|$alphaHex)+"H"
@ott = "0o" $digitOtt+ | $digitOtt+ "O"

actions :-

  @dec                                { \s -> TknDec Decimal (strToDec s)}
  @hex                                { \s -> TknHex Hex (hexToDec s)}
  @ott                                { \s -> TknOtt Ott (ottToDec s)}
  .                                   ;
  $white+                             ;
{
-- Converts the hex number in decimal base
strToDec :: String -> Int
strToDec [] = 0
strToDec hxStr = decCharValue (last hxStr) + 10 * strToDec (init hxStr) where
  decCharValue :: Char -> Int
  decCharValue ch
      | ch == '0' = 0
      | ch == '1' = 1
      | ch == '2' = 2
      | ch == '3' = 3
      | ch == '4' = 4
      | ch == '5' = 5
      | ch == '6' = 6
      | ch == '7' = 7
      | ch == '8' = 8
      | ch == '9' = 9
      | otherwise     = 0

-- Converts the hex number in decimal base
hexToDec :: String -> Int
hexToDec [] = 0
hexToDec hxStr = if (last hxStr) == 'H'
  then hexToDec (init hxStr)
  else hexCharValue (last hxStr) + 16 * hexToDec (init hxStr) where
    hexCharValue :: Char -> Int
    hexCharValue ch
        | ch == '0' = 0
        | ch == '1' = 1
        | ch == '2' = 2
        | ch == '3' = 3
        | ch == '4' = 4
        | ch == '5' = 5
        | ch == '6' = 6
        | ch == '7' = 7
        | ch == '8' = 8
        | ch == '9' = 9
        | ch == 'A' = 10
        | ch == 'B' = 11
        | ch == 'C' = 12
        | ch == 'D' = 13
        | ch == 'E' = 14
        | ch == 'F' = 15
        | ch == 'a' = 10
        | ch == 'b' = 11
        | ch == 'c' = 12
        | ch == 'd' = 13
        | ch == 'e' = 14
        | ch == 'f' = 15
        | otherwise     = 0


-- Converts the ott number in decimal base
ottToDec :: String -> Int
ottToDec [] = 0
ottToDec ottStr = if (last ottStr) == 'O'
  then ottToDec (init ottStr)
  else ottCharValue (last ottStr) + 8 * ottToDec (init ottStr) where
    ottCharValue :: Char -> Int
    ottCharValue ch
        | ch == '0' = 0
        | ch == '1' = 1
        | ch == '2' = 2
        | ch == '3' = 3
        | ch == '4' = 4
        | ch == '5' = 5
        | ch == '6' = 6
        | ch == '7' = 7
        | otherwise    = 0

data NumberBase = Decimal | Hex | Ott
          deriving (Eq, Show)

data Token
        = TknDec { numberBase :: NumberBase, value :: Int}
        | TknHex { numberBase :: NumberBase, value :: Int}
        | TknOtt { numberBase :: NumberBase, value :: Int}
        deriving (Eq, Show)

main = do
        s <- getContents
        print (alexScanTokens s)
}
