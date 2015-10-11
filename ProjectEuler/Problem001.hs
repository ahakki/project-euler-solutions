module ProjectEuler.Problem001 where


result :: Integer
result = sum listOfDivs
    where
        range = [1..99999]
        listOfDivs = filter (\x -> mod x 3 == 0 || mod x 5 == 0) range
