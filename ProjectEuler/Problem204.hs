module ProjectEuler.Problem204 (result) where

import Data.Numbers.Primes
import Ahakki.Resis

result = PEResult 204 $ fromIntegral $ length(filter (==True) $ map (isHamming 5) [1..1000000000] )

smallPrimes:: [Integer]
smallPrimes = take 25 primes

isHamming:: Integral a => a -> a -> Bool
isHamming t n = all (<= t) (primeFactors n)
