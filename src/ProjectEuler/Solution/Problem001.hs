module ProjectEuler.Solution.Problem001 (result) where

import            ProjectEuler.Result

result :: PEResult
result = PEResult 1 calc

calc = sum listOfDivs
    where
        range = [1..999]
        listOfDivs = filter (\x -> mod x 3 == 0 || mod x 5 == 0) range
