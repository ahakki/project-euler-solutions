module ProjectEuler.Result
    (PEResult (..)
    ) where

import Data.List

data PEResult
    = PEResult
        { peProblemNum     :: Integer
        , peProblemAnswer  :: Integer}
    | NotComplete
    deriving (Show, Eq)



-- instance Show (PEResult) where
--     show (PEResult n a) = unwords ["Result of Project Euler Problem Number",  show n, "is", show a]
--     show NotComplete    = "This Problem is not solved yet"
