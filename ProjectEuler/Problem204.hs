{-# LANGUAGE RankNTypes #-}
module ProjectEuler.Problem204 where

import Data.Numbers.Primes

result :: Int
result = length(filter (==True) $ map (isHamming 5) [1..1000000000] )

smallPrimes :: [Integer]
smallPrimes = take 25 primes

isHamming :: forall a. Integral a => a -> a -> Bool
isHamming t n = all (<= t) (primeFactors n)