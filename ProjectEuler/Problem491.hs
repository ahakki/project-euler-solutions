module ProjectEuler.Problem491 (result) where

import Ahakki.Numis
import Ahakki.Resis
import Data.List


result:: PEResult
result = PEResult 491 (toInteger (length calc))

calc = concatMap divisibleBy11  $ concat (permutations (pandigitalDigs ++ pandigitalDigs))
permutes = permutations (pandigitalDigs ++ pandigitalDigs)

range:: [Integer]
range = primesUpTo 100

pandigitalDigs :: [[Integer]]
pandigitalDigs = permutations  [0..9]

divisibleBy11 = filter (\x -> mod x 11 == 0)
