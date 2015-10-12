module ProjectEuler.Problem204 (result) where

import Data.Numbers.Primes

result :: Int
result = length(filter (==True) $ map (isHamming 5) [1..1000000000] )

smallPrimes:: [Integer]
smallPrimes = take 25 primes

isHamming:: Integral a => a -> a -> Bool
isHamming t n = all (<= t) (primeFactors n)
