
--Project Euler

import              Data.Maybe
import              Ahakki.PrintResult
import qualified    ProjectEuler.Problem001 as P001
import qualified    ProjectEuler.Problem031 as P031
import qualified    ProjectEuler.Problem204 as P204
import qualified    ProjectEuler.Problem357 as P357
import qualified    ProjectEuler.Problem491 as P491


main =  putStrLn "hello there" >>
        putStrLn (replicate 80 '+') >>
        putStrLn "this is the not quite ultimate Porject Euler Solver" >>
        putStrLn "which problem do you want so solve? we currently offer 1, 31, 204, 357 and 491 with no guaratees of success" >>
        getLine >>= \input ->
            let problemNum = input
            in putStrLn $ fromMaybe "there was an error with your input" (peResult problemNum)


peResult x
    |x == "1" = Just (show P001.result) ::Maybe String
    |otherwise = Nothing