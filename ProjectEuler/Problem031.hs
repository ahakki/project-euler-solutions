module ProjectEuler.Problem031 (result) where

import Ahakki.Resis

result:: PEResult
result = NotComplete


data Coin = Coin {  value     :: Integer
                 ,  contents  :: [Coin]}

instance Show Coin where
  show (Coin v c) =  show v


p1    = Coin 1    []
p2    = Coin 2    [p1, p1]
p5    = Coin 5    [p1, p2, p2]
p10   = Coin 10   [p5, p5]
p20   = Coin 20   [p10, p10]
p50   = Coin 50   [p20, p20, p10]
p100  = Coin 100  [p50, p50]
p200  = Coin 200  [p100, p100]

contents2 c = concatMap contents $ contents c
contents3 c = concatMap contents $ contents2 c

contentizator (Coin v []) = show v
contentizator (Coin v c) =  show v ++ " --> " ++ concatMap contentizatortackc
