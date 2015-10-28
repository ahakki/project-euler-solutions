module Ahakki.Resis where

data PEResult a = PEResult {peProblemNum :: Integer, peProblemAnswer :: a}

instance Show a => Show (PEResult a) where
    show (PEResult n a) = "Result of Project Euler Problem Number " ++ show n ++ " is " ++ show a
