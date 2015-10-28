module ProjectEuler.Problem491 (result) where

import Ahakki.Numis
import Ahakki.Resis
import Data.List


result:: PEResult
result = PEResult 491 $ fromIntegral $ length divisibleBy11

range:: [Integer]
range = primesUpTo 100

pandigitalNums:: [Integer]
pandigitalNums = map toNum pandigitalDigs
    where
        pandigitalDigs = permutations $ [0..9] ++ [0..9]

divisibleBy11::      [Integer]
divisibleBy11 = filter (\x -> mod x 11 == 0) pandigitalNums
