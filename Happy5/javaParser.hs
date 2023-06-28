{-# OPTIONS_GHC -w #-}
module Main (main) where
import JavaAlex      -- Alex lexer
import qualified Data.Array as Happy_Data_Array
import qualified Data.Bits as Bits
import Control.Applicative(Applicative(..))
import Control.Monad (ap)

-- parser produced by Happy Version 1.20.0

data HappyAbsSyn t4 t5 t6 t7 t8
	= HappyTerminal (Token)
	| HappyErrorToken Prelude.Int
	| HappyAbsSyn4 t4
	| HappyAbsSyn5 t5
	| HappyAbsSyn6 t6
	| HappyAbsSyn7 t7
	| HappyAbsSyn8 t8

happyExpList :: Happy_Data_Array.Array Prelude.Int Prelude.Int
happyExpList = Happy_Data_Array.listArray (0,68) ([33280,32778,672,0,2048,42,14,41088,2,2,128,0,49152,0,48,0,4,4,192,12288,0,0,0,16,0,0,0,64,3,41088,2,4,64,16384,0,32,48,0,2,0,0,4,0,0,0,32768,672,0,2048,42,256,16384,0,64,10760,0,0,32,43040,0,4,2690,0,0,0
	])

{-# NOINLINE happyExpListPerState #-}
happyExpListPerState st =
    token_strs_expected
  where token_strs = ["error","%dummy","%start_javaCode","inizio","blocco","bool","com","var","int","ide","eq","incEq","compara","'('","')'","'{'","'}'","if","else","while","end","%eof"]
        bit_start = st Prelude.* 22
        bit_end = (st Prelude.+ 1) Prelude.* 22
        read_bit = readArrayBit happyExpList
        bits = Prelude.map read_bit [bit_start..bit_end Prelude.- 1]
        bits_indexed = Prelude.zip bits [0..21]
        token_strs_expected = Prelude.concatMap f bits_indexed
        f (Prelude.False, _) = []
        f (Prelude.True, nr) = [token_strs Prelude.!! nr]

action_0 (10) = happyShift action_4
action_0 (16) = happyShift action_5
action_0 (18) = happyShift action_6
action_0 (20) = happyShift action_7
action_0 (4) = happyGoto action_8
action_0 (5) = happyGoto action_2
action_0 (7) = happyGoto action_3
action_0 _ = happyFail (happyExpListPerState 0)

action_1 (10) = happyShift action_4
action_1 (16) = happyShift action_5
action_1 (18) = happyShift action_6
action_1 (20) = happyShift action_7
action_1 (5) = happyGoto action_2
action_1 (7) = happyGoto action_3
action_1 _ = happyFail (happyExpListPerState 1)

action_2 _ = happyReduce_1

action_3 (10) = happyShift action_4
action_3 (16) = happyShift action_5
action_3 (18) = happyShift action_6
action_3 (20) = happyShift action_7
action_3 (5) = happyGoto action_15
action_3 (7) = happyGoto action_3
action_3 _ = happyReduce_2

action_4 (10) = happyShift action_12
action_4 (11) = happyShift action_13
action_4 (12) = happyShift action_14
action_4 _ = happyFail (happyExpListPerState 4)

action_5 (10) = happyShift action_4
action_5 (16) = happyShift action_5
action_5 (18) = happyShift action_6
action_5 (20) = happyShift action_7
action_5 (5) = happyGoto action_11
action_5 (7) = happyGoto action_3
action_5 _ = happyFail (happyExpListPerState 5)

action_6 (14) = happyShift action_10
action_6 _ = happyFail (happyExpListPerState 6)

action_7 (14) = happyShift action_9
action_7 _ = happyFail (happyExpListPerState 7)

action_8 (22) = happyAccept
action_8 _ = happyFail (happyExpListPerState 8)

action_9 (9) = happyShift action_17
action_9 (10) = happyShift action_18
action_9 (6) = happyGoto action_24
action_9 (8) = happyGoto action_23
action_9 _ = happyFail (happyExpListPerState 9)

action_10 (9) = happyShift action_17
action_10 (10) = happyShift action_18
action_10 (6) = happyGoto action_22
action_10 (8) = happyGoto action_23
action_10 _ = happyFail (happyExpListPerState 10)

action_11 (17) = happyShift action_21
action_11 _ = happyFail (happyExpListPerState 11)

action_12 (11) = happyShift action_20
action_12 _ = happyFail (happyExpListPerState 12)

action_13 (9) = happyShift action_17
action_13 (10) = happyShift action_18
action_13 (8) = happyGoto action_19
action_13 _ = happyFail (happyExpListPerState 13)

action_14 (9) = happyShift action_17
action_14 (10) = happyShift action_18
action_14 (8) = happyGoto action_16
action_14 _ = happyFail (happyExpListPerState 14)

action_15 _ = happyReduce_3

action_16 (21) = happyShift action_31
action_16 _ = happyFail (happyExpListPerState 16)

action_17 _ = happyReduce_16

action_18 _ = happyReduce_15

action_19 (21) = happyShift action_30
action_19 _ = happyFail (happyExpListPerState 19)

action_20 (9) = happyShift action_17
action_20 (10) = happyShift action_18
action_20 (8) = happyGoto action_29
action_20 _ = happyFail (happyExpListPerState 20)

action_21 (10) = happyShift action_4
action_21 (16) = happyShift action_5
action_21 (18) = happyShift action_6
action_21 (20) = happyShift action_7
action_21 (5) = happyGoto action_28
action_21 (7) = happyGoto action_3
action_21 _ = happyReduce_4

action_22 (15) = happyShift action_27
action_22 _ = happyFail (happyExpListPerState 22)

action_23 (13) = happyShift action_26
action_23 _ = happyReduce_10

action_24 (15) = happyShift action_25
action_24 _ = happyFail (happyExpListPerState 24)

action_25 (16) = happyShift action_35
action_25 _ = happyFail (happyExpListPerState 25)

action_26 (9) = happyShift action_17
action_26 (10) = happyShift action_18
action_26 (8) = happyGoto action_34
action_26 _ = happyFail (happyExpListPerState 26)

action_27 (16) = happyShift action_33
action_27 _ = happyFail (happyExpListPerState 27)

action_28 _ = happyReduce_5

action_29 (21) = happyShift action_32
action_29 _ = happyFail (happyExpListPerState 29)

action_30 _ = happyReduce_12

action_31 _ = happyReduce_13

action_32 _ = happyReduce_14

action_33 (10) = happyShift action_4
action_33 (16) = happyShift action_5
action_33 (18) = happyShift action_6
action_33 (20) = happyShift action_7
action_33 (5) = happyGoto action_37
action_33 (7) = happyGoto action_3
action_33 _ = happyFail (happyExpListPerState 33)

action_34 _ = happyReduce_11

action_35 (10) = happyShift action_4
action_35 (16) = happyShift action_5
action_35 (18) = happyShift action_6
action_35 (20) = happyShift action_7
action_35 (5) = happyGoto action_36
action_35 (7) = happyGoto action_3
action_35 _ = happyFail (happyExpListPerState 35)

action_36 (17) = happyShift action_39
action_36 _ = happyFail (happyExpListPerState 36)

action_37 (17) = happyShift action_38
action_37 _ = happyFail (happyExpListPerState 37)

action_38 (19) = happyShift action_41
action_38 _ = happyFail (happyExpListPerState 38)

action_39 (10) = happyShift action_4
action_39 (16) = happyShift action_5
action_39 (18) = happyShift action_6
action_39 (20) = happyShift action_7
action_39 (5) = happyGoto action_40
action_39 (7) = happyGoto action_3
action_39 _ = happyReduce_8

action_40 _ = happyReduce_9

action_41 (16) = happyShift action_42
action_41 _ = happyFail (happyExpListPerState 41)

action_42 (10) = happyShift action_4
action_42 (16) = happyShift action_5
action_42 (18) = happyShift action_6
action_42 (20) = happyShift action_7
action_42 (5) = happyGoto action_43
action_42 (7) = happyGoto action_3
action_42 _ = happyFail (happyExpListPerState 42)

action_43 (17) = happyShift action_44
action_43 _ = happyFail (happyExpListPerState 43)

action_44 (10) = happyShift action_4
action_44 (16) = happyShift action_5
action_44 (18) = happyShift action_6
action_44 (20) = happyShift action_7
action_44 (5) = happyGoto action_45
action_44 (7) = happyGoto action_3
action_44 _ = happyReduce_6

action_45 _ = happyReduce_7

happyReduce_1 = happySpecReduce_1  4 happyReduction_1
happyReduction_1 (HappyAbsSyn5  happy_var_1)
	 =  HappyAbsSyn4
		 (creaBlocco happy_var_1
	)
happyReduction_1 _  = notHappyAtAll 

happyReduce_2 = happySpecReduce_1  5 happyReduction_2
happyReduction_2 (HappyAbsSyn7  happy_var_1)
	 =  HappyAbsSyn5
		 (ListaDiComandi [happy_var_1]
	)
happyReduction_2 _  = notHappyAtAll 

happyReduce_3 = happySpecReduce_2  5 happyReduction_3
happyReduction_3 (HappyAbsSyn5  happy_var_2)
	(HappyAbsSyn7  happy_var_1)
	 =  HappyAbsSyn5
		 (aggiungiComando happy_var_1 happy_var_2
	)
happyReduction_3 _ _  = notHappyAtAll 

happyReduce_4 = happySpecReduce_3  5 happyReduction_4
happyReduction_4 _
	(HappyAbsSyn5  happy_var_2)
	_
	 =  HappyAbsSyn5
		 (creaBlocco happy_var_2
	)
happyReduction_4 _ _ _  = notHappyAtAll 

happyReduce_5 = happyReduce 4 5 happyReduction_5
happyReduction_5 ((HappyAbsSyn5  happy_var_4) `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn5  happy_var_2) `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn5
		 (piuBlocchi (creaBlocco happy_var_2) happy_var_4
	) `HappyStk` happyRest

happyReduce_6 = happyReduce 11 5 happyReduction_6
happyReduction_6 (_ `HappyStk`
	(HappyAbsSyn5  happy_var_10) `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn5  happy_var_6) `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn6  happy_var_3) `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn5
		 (If happy_var_3 happy_var_6 happy_var_10
	) `HappyStk` happyRest

happyReduce_7 = happyReduce 12 5 happyReduction_7
happyReduction_7 ((HappyAbsSyn5  happy_var_12) `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn5  happy_var_10) `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn5  happy_var_6) `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn6  happy_var_3) `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn5
		 (piuBlocchi (If happy_var_3 (creaBlocco happy_var_6) (creaBlocco happy_var_10)) happy_var_12
	) `HappyStk` happyRest

happyReduce_8 = happyReduce 7 5 happyReduction_8
happyReduction_8 (_ `HappyStk`
	(HappyAbsSyn5  happy_var_6) `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn6  happy_var_3) `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn5
		 (While happy_var_3 happy_var_6
	) `HappyStk` happyRest

happyReduce_9 = happyReduce 8 5 happyReduction_9
happyReduction_9 ((HappyAbsSyn5  happy_var_8) `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn5  happy_var_6) `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn6  happy_var_3) `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn5
		 (piuBlocchi (While happy_var_3 (creaBlocco happy_var_6)) happy_var_8
	) `HappyStk` happyRest

happyReduce_10 = happySpecReduce_1  6 happyReduction_10
happyReduction_10 (HappyAbsSyn8  happy_var_1)
	 =  HappyAbsSyn6
		 (BoolV happy_var_1
	)
happyReduction_10 _  = notHappyAtAll 

happyReduce_11 = happySpecReduce_3  6 happyReduction_11
happyReduction_11 (HappyAbsSyn8  happy_var_3)
	(HappyTerminal (TknComp happy_var_2))
	(HappyAbsSyn8  happy_var_1)
	 =  HappyAbsSyn6
		 (BoolVC happy_var_1 happy_var_2 happy_var_3
	)
happyReduction_11 _ _ _  = notHappyAtAll 

happyReduce_12 = happyReduce 4 7 happyReduction_12
happyReduction_12 (_ `HappyStk`
	(HappyAbsSyn8  happy_var_3) `HappyStk`
	_ `HappyStk`
	(HappyTerminal (TknIdentifier happy_var_1)) `HappyStk`
	happyRest)
	 = HappyAbsSyn7
		 (ComAss happy_var_1 happy_var_3
	) `HappyStk` happyRest

happyReduce_13 = happyReduce 4 7 happyReduction_13
happyReduction_13 (_ `HappyStk`
	(HappyAbsSyn8  happy_var_3) `HappyStk`
	_ `HappyStk`
	(HappyTerminal (TknIdentifier happy_var_1)) `HappyStk`
	happyRest)
	 = HappyAbsSyn7
		 (ComAssInc happy_var_1 happy_var_3
	) `HappyStk` happyRest

happyReduce_14 = happyReduce 5 7 happyReduction_14
happyReduction_14 (_ `HappyStk`
	(HappyAbsSyn8  happy_var_4) `HappyStk`
	_ `HappyStk`
	(HappyTerminal (TknIdentifier happy_var_2)) `HappyStk`
	(HappyTerminal (TknIdentifier happy_var_1)) `HappyStk`
	happyRest)
	 = HappyAbsSyn7
		 (AssegnamentoInit happy_var_1 happy_var_2 happy_var_4
	) `HappyStk` happyRest

happyReduce_15 = happySpecReduce_1  8 happyReduction_15
happyReduction_15 (HappyTerminal (TknIdentifier happy_var_1))
	 =  HappyAbsSyn8
		 (VarId happy_var_1
	)
happyReduction_15 _  = notHappyAtAll 

happyReduce_16 = happySpecReduce_1  8 happyReduction_16
happyReduction_16 (HappyTerminal (TknConstant happy_var_1))
	 =  HappyAbsSyn8
		 (VarInt happy_var_1
	)
happyReduction_16 _  = notHappyAtAll 

happyNewToken action sts stk [] =
	action 22 22 notHappyAtAll (HappyState action) sts stk []

happyNewToken action sts stk (tk:tks) =
	let cont i = action i i tk (HappyState action) sts stk tks in
	case tk of {
	TknConstant happy_dollar_dollar -> cont 9;
	TknIdentifier happy_dollar_dollar -> cont 10;
	TknEq -> cont 11;
	TknEqInc -> cont 12;
	TknComp happy_dollar_dollar -> cont 13;
	TknOpenParentheses -> cont 14;
	TknClosedParentheses -> cont 15;
	TknOpenBlock -> cont 16;
	TknClosedBlock -> cont 17;
	TknIf -> cont 18;
	TknElse -> cont 19;
	TknWhile -> cont 20;
	TknEndStatement -> cont 21;
	_ -> happyError' ((tk:tks), [])
	}

happyError_ explist 22 tk tks = happyError' (tks, explist)
happyError_ explist _ tk tks = happyError' ((tk:tks), explist)

newtype HappyIdentity a = HappyIdentity a
happyIdentity = HappyIdentity
happyRunIdentity (HappyIdentity a) = a

instance Prelude.Functor HappyIdentity where
    fmap f (HappyIdentity a) = HappyIdentity (f a)

instance Applicative HappyIdentity where
    pure  = HappyIdentity
    (<*>) = ap
instance Prelude.Monad HappyIdentity where
    return = pure
    (HappyIdentity p) >>= q = q p

happyThen :: () => HappyIdentity a -> (a -> HappyIdentity b) -> HappyIdentity b
happyThen = (Prelude.>>=)
happyReturn :: () => a -> HappyIdentity a
happyReturn = (Prelude.return)
happyThen1 m k tks = (Prelude.>>=) m (\a -> k a tks)
happyReturn1 :: () => a -> b -> HappyIdentity a
happyReturn1 = \a tks -> (Prelude.return) a
happyError' :: () => ([(Token)], [Prelude.String]) -> HappyIdentity a
happyError' = HappyIdentity Prelude.. (\(tokens, _) -> parseError tokens)
javaCode tks = happyRunIdentity happySomeParser where
 happySomeParser = happyThen (happyParse action_0 tks) (\x -> case x of {HappyAbsSyn4 z -> happyReturn z; _other -> notHappyAtAll })

happySeq = happyDontSeq


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
{-# LINE 1 "templates/GenericTemplate.hs" #-}
-- $Id: GenericTemplate.hs,v 1.26 2005/01/14 14:47:22 simonmar Exp $










































data Happy_IntList = HappyCons Prelude.Int Happy_IntList








































infixr 9 `HappyStk`
data HappyStk a = HappyStk a (HappyStk a)

-----------------------------------------------------------------------------
-- starting the parse

happyParse start_state = happyNewToken start_state notHappyAtAll notHappyAtAll

-----------------------------------------------------------------------------
-- Accepting the parse

-- If the current token is ERROR_TOK, it means we've just accepted a partial
-- parse (a %partial parser).  We must ignore the saved token on the top of
-- the stack in this case.
happyAccept (1) tk st sts (_ `HappyStk` ans `HappyStk` _) =
        happyReturn1 ans
happyAccept j tk st sts (HappyStk ans _) = 
         (happyReturn1 ans)

-----------------------------------------------------------------------------
-- Arrays only: do the next action









































indexShortOffAddr arr off = arr Happy_Data_Array.! off


{-# INLINE happyLt #-}
happyLt x y = (x Prelude.< y)






readArrayBit arr bit =
    Bits.testBit (indexShortOffAddr arr (bit `Prelude.div` 16)) (bit `Prelude.mod` 16)






-----------------------------------------------------------------------------
-- HappyState data type (not arrays)



newtype HappyState b c = HappyState
        (Prelude.Int ->                    -- token number
         Prelude.Int ->                    -- token number (yes, again)
         b ->                           -- token semantic value
         HappyState b c ->              -- current state
         [HappyState b c] ->            -- state stack
         c)



-----------------------------------------------------------------------------
-- Shifting a token

happyShift new_state (1) tk st sts stk@(x `HappyStk` _) =
     let i = (case x of { HappyErrorToken (i) -> i }) in
--     trace "shifting the error token" $
     new_state i i tk (HappyState (new_state)) ((st):(sts)) (stk)

happyShift new_state i tk st sts stk =
     happyNewToken new_state ((st):(sts)) ((HappyTerminal (tk))`HappyStk`stk)

-- happyReduce is specialised for the common cases.

happySpecReduce_0 i fn (1) tk st sts stk
     = happyFail [] (1) tk st sts stk
happySpecReduce_0 nt fn j tk st@((HappyState (action))) sts stk
     = action nt j tk st ((st):(sts)) (fn `HappyStk` stk)

happySpecReduce_1 i fn (1) tk st sts stk
     = happyFail [] (1) tk st sts stk
happySpecReduce_1 nt fn j tk _ sts@(((st@(HappyState (action))):(_))) (v1`HappyStk`stk')
     = let r = fn v1 in
       happySeq r (action nt j tk st sts (r `HappyStk` stk'))

happySpecReduce_2 i fn (1) tk st sts stk
     = happyFail [] (1) tk st sts stk
happySpecReduce_2 nt fn j tk _ ((_):(sts@(((st@(HappyState (action))):(_))))) (v1`HappyStk`v2`HappyStk`stk')
     = let r = fn v1 v2 in
       happySeq r (action nt j tk st sts (r `HappyStk` stk'))

happySpecReduce_3 i fn (1) tk st sts stk
     = happyFail [] (1) tk st sts stk
happySpecReduce_3 nt fn j tk _ ((_):(((_):(sts@(((st@(HappyState (action))):(_))))))) (v1`HappyStk`v2`HappyStk`v3`HappyStk`stk')
     = let r = fn v1 v2 v3 in
       happySeq r (action nt j tk st sts (r `HappyStk` stk'))

happyReduce k i fn (1) tk st sts stk
     = happyFail [] (1) tk st sts stk
happyReduce k nt fn j tk st sts stk
     = case happyDrop (k Prelude.- ((1) :: Prelude.Int)) sts of
         sts1@(((st1@(HappyState (action))):(_))) ->
                let r = fn stk in  -- it doesn't hurt to always seq here...
                happyDoSeq r (action nt j tk st1 sts1 r)

happyMonadReduce k nt fn (1) tk st sts stk
     = happyFail [] (1) tk st sts stk
happyMonadReduce k nt fn j tk st sts stk =
      case happyDrop k ((st):(sts)) of
        sts1@(((st1@(HappyState (action))):(_))) ->
          let drop_stk = happyDropStk k stk in
          happyThen1 (fn stk tk) (\r -> action nt j tk st1 sts1 (r `HappyStk` drop_stk))

happyMonad2Reduce k nt fn (1) tk st sts stk
     = happyFail [] (1) tk st sts stk
happyMonad2Reduce k nt fn j tk st sts stk =
      case happyDrop k ((st):(sts)) of
        sts1@(((st1@(HappyState (action))):(_))) ->
         let drop_stk = happyDropStk k stk





             _ = nt :: Prelude.Int
             new_state = action

          in
          happyThen1 (fn stk tk) (\r -> happyNewToken new_state sts1 (r `HappyStk` drop_stk))

happyDrop (0) l = l
happyDrop n ((_):(t)) = happyDrop (n Prelude.- ((1) :: Prelude.Int)) t

happyDropStk (0) l = l
happyDropStk n (x `HappyStk` xs) = happyDropStk (n Prelude.- ((1)::Prelude.Int)) xs

-----------------------------------------------------------------------------
-- Moving to a new state after a reduction









happyGoto action j tk st = action j j tk (HappyState action)


-----------------------------------------------------------------------------
-- Error recovery (ERROR_TOK is the error token)

-- parse error if we are in recovery and we fail again
happyFail explist (1) tk old_st _ stk@(x `HappyStk` _) =
     let i = (case x of { HappyErrorToken (i) -> i }) in
--      trace "failing" $ 
        happyError_ explist i tk

{-  We don't need state discarding for our restricted implementation of
    "error".  In fact, it can cause some bogus parses, so I've disabled it
    for now --SDM

-- discard a state
happyFail  ERROR_TOK tk old_st CONS(HAPPYSTATE(action),sts) 
                                                (saved_tok `HappyStk` _ `HappyStk` stk) =
--      trace ("discarding state, depth " ++ show (length stk))  $
        DO_ACTION(action,ERROR_TOK,tk,sts,(saved_tok`HappyStk`stk))
-}

-- Enter error recovery: generate an error token,
--                       save the old token and carry on.
happyFail explist i tk (HappyState (action)) sts stk =
--      trace "entering error recovery" $
        action (1) (1) tk (HappyState (action)) sts ((HappyErrorToken (i)) `HappyStk` stk)

-- Internal happy errors:

notHappyAtAll :: a
notHappyAtAll = Prelude.error "Internal Happy error\n"

-----------------------------------------------------------------------------
-- Hack to get the typechecker to accept our action functions







-----------------------------------------------------------------------------
-- Seq-ing.  If the --strict flag is given, then Happy emits 
--      happySeq = happyDoSeq
-- otherwise it emits
--      happySeq = happyDontSeq

happyDoSeq, happyDontSeq :: a -> b -> b
happyDoSeq   a b = a `Prelude.seq` b
happyDontSeq a b = b

-----------------------------------------------------------------------------
-- Don't inline any functions from the template.  GHC has a nasty habit
-- of deciding to inline happyGoto everywhere, which increases the size of
-- the generated parser quite a bit.









{-# NOINLINE happyShift #-}
{-# NOINLINE happySpecReduce_0 #-}
{-# NOINLINE happySpecReduce_1 #-}
{-# NOINLINE happySpecReduce_2 #-}
{-# NOINLINE happySpecReduce_3 #-}
{-# NOINLINE happyReduce #-}
{-# NOINLINE happyMonadReduce #-}
{-# NOINLINE happyGoto #-}
{-# NOINLINE happyFail #-}

-- end of Happy Template.
