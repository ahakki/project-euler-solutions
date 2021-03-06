module ProjectEuler.Helper.Numis where

import Data.Digits
import Data.Numbers.Primes


--Converts a number into a list of it's digits
toDigits :: Integral n => n -> [n]
toDigits = digits 10

--Converts a list of digits to a number
toNum :: Integral n => [n] -> n
toNum = unDigits 10

--Calculates the sum of a numbers Digits
sumOfDigits :: Integral a => a -> a
sumOfDigits n = sum $ digitsRev 10 n

--Reverses a numbers digits (eg. 123 -> 321)
reverseNum :: Integral n => n -> n
reverseNum n =  toNum (reverse $ toDigits n)

-- Sieve of Eratosthene
primesUpTo :: Integral a => a -> [a]
primesUpTo l =
    sieve' [2..l] []
  where
      sieve' (p:ns) ps =
          sieve' (filter (\x -> rem x p /= 0) ns) (p : ps)
      sieve' [] ps =
          reverse ps