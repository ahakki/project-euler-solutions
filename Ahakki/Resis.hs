module Ahakki.Resis where

import Data.List

data PEResult =     PEResult { peProblemNum     :: Integer
                             , peProblemAnswer  :: Integer}
                 |  NotComplete

instance Show (PEResult) where
    show (PEResult n a) = unwords ["Result of Project Euler Problem Number",  show n, "is", show a]
    show NotComplete    = "This Problemo is not el solvé yet"
