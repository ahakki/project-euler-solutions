module Ahakki.PrintResult where

--import           System.TimeIt
printResult :: Show a => a -> IO ()
printResult r=
    putStrLn (replicate 80 '*')  >>
    putStrLn "press enter to go" >>
    getLine >>
    print r >>
    putStrLn "press enter to leave" >>
    getLine >>
    putStrLn "bye"
