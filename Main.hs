import              Data.Maybe
import              Ahakki.Resis


--import all the PE solutions
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
        in
        print (peResult problemNum) >>
        putStrLn "press enter to leave" >>
        getLine >>
        putStrLn "bye"

peResult x
    |x == "1"    = P001.result
    |x == "31"   = P031.result
    |x == "204"  = P204.result
    |x == "357"  = P357.result
    |x == "491"  = P491.result
    |otherwise   = NotComplete
