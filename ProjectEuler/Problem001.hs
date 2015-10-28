module ProjectEuler.Problem001 where

import            Ahakki.Resis

result :: PEResult Integer
result = PEResult {peProblemNum = 1, peProblemAnswer = calc}

calc = sum listOfDivs
    where
        range = [1..99999]
        listOfDivs = filter (\x -> mod x 3 == 0 || mod x 5 == 0) range
