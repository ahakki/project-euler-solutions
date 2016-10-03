module ProjectEuler.Solution.Problem112 (result) where

import ProjectEuler.Result

result :: PEResult
result =
    PEResult 112 $ letsGo range initial

data BouncyCounter = BouncyCounter
    { val           :: Integer
    , counter       :: (Integer, Integer)
    }


initial :: BouncyCounter
initial =
    BouncyCounter 0 (0, 0)

range :: [Integer]
range =
     [1..]

letsGo :: [Integer] -> BouncyCounter -> Integer
letsGo vals (BouncyCounter n (t, f))
    | fromIntegral t / fromIntegral f >= 99 =
        n
    | isBouncy . head $ vals =
        letsGo (tail vals) (BouncyCounter (head vals) (t + 1 , f))
    | not . isBouncy . head $ vals =
        letsGo (tail vals) (BouncyCounter (head vals) (t , f + 1))



isBouncy :: Integer -> Bool
isBouncy n
    | compFstNSnd (==) n =
        isBouncy . read . tail . show $ n
    | compFstNSnd (>) n =
        not . isDecreasing $ show n
    | compFstNSnd (<) n =
        not . isIncreasing $ show n
    | otherwise =
        False
  where
    compFstNSnd :: (Maybe Integer -> Maybe Integer -> t) -> Integer -> t
    compFstNSnd f m =
        f (safeHead . numToList $ m) (safeHead . tail . numToList $ m)
    isIncreasing :: Ord a => [a] -> Bool
    isIncreasing (x:[]) =
        True
    isIncreasing (x:xs)
        | x <= head xs =
            isIncreasing xs
        | otherwise =
            False
    isDecreasing :: Ord a => [a] -> Bool
    isDecreasing (x:[]) =
        True
    isDecreasing (x:xs)
        | x >= head xs =
            isDecreasing xs
        | otherwise =
            False
    safeHead :: [a] -> Maybe a
    safeHead (x:_) =
        Just x
    safeHead [] =
        Nothing
    numToList :: Integer -> [Integer]
    numToList =
        ntl . show
        where
            ntl (x:xs) =
                (read [x] :: Integer) : (ntl xs)
            ntl [] =
                []
