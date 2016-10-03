import              Data.Maybe
import              ProjectEuler.Result


--import all the PE solutions
import qualified    ProjectEuler.Solution.Problem001 as P001
import qualified    ProjectEuler.Solution.Problem031 as P031
import qualified    ProjectEuler.Solution.Problem112 as P112
import qualified    ProjectEuler.Solution.Problem204 as P204
import qualified    ProjectEuler.Solution.Problem357 as P357
import qualified    ProjectEuler.Solution.Problem491 as P491


main =  putStrLn "hello there" >>
        putStrLn (replicate 80 '+') >>
        putStrLn "this is the not quite ultimate Porject Euler Solver" >>
        putStrLn "which problem do you want so solve? we currently offer 1, 31, 112, 204, 357 and 491 with no guaratees of success" >>
        getLine >>= \input ->
        let problemNum = input
        in
        printResult (peResult problemNum) >>
        putStrLn "press enter to leave" >>
        getLine >>
        putStrLn "bye"

peResult x
    |x == "1"    = P001.result
    |x == "31"   = P031.result
    |x == "112"  = P112.result
    |x == "204"  = P204.result
    |x == "357"  = P357.result
    |x == "491"  = P491.result
    |otherwise   = NotComplete

printResult (PEResult n a) = putStrLn $
    unwords ["Result of Project Euler Problem Number",  show n, "is", show a]
printResult NotComplete    = putStrLn $
    "This Problem is not solved yet"