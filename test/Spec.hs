module Main (main) where

import              Test.Hspec

import              ProjectEuler.Result
--import all the PE solutions
import qualified    ProjectEuler.Solution.Problem001 as P001
import qualified    ProjectEuler.Solution.Problem031 as P031
import qualified    ProjectEuler.Solution.Problem112 as P112
import qualified    ProjectEuler.Solution.Problem204 as P204
import qualified    ProjectEuler.Solution.Problem357 as P357
import qualified    ProjectEuler.Solution.Problem491 as P491


main :: IO ()
main = hspec $ do
    it "solves Problem 1" $ do
        P001.result `shouldBe` PEResult 1   233168
    it "solves Problem 31" $ do
        P031.result `shouldBe` NotComplete
    it "solves Problem 112" $ do
        P112.result `shouldBe` PEResult 112 1587000
    it "solves Problem 204" $ do
        P204.result `shouldBe` NotComplete
    it "solves Problem 357" $ do
        P357.result `shouldBe` NotComplete
    it "solves Problem 491" $ do
        P491.result `shouldBe` NotComplete


