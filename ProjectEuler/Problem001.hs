module ProjectEuler.Problem001 where

import            Ahakki.Resis

result :: PEResult
result = PEResult 1 calc

calc = sum listOfDivs
    where
        range = [1..99999]
        listOfDivs = filter (\x -> mod x 3 == 0 || mod x 5 == 0) range
