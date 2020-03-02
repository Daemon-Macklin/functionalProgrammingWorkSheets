-- Voting algorithm example from chapter 7 of Programming in Haskell,
-- Graham Hutton, Cambridge University Press, 2016.

import Data.List

-- First past the post

votes :: [String]
votes = ["Red", "Blue", "Green", "Blue", "Blue", "Red"]

count :: Eq a => a -> [a] -> Int
count x = length . filter (== x)

rmdups :: Eq a => [a] -> [a]
rmdups []     = []
rmdups (x:xs) = x : filter (/= x) (rmdups xs)

result :: Ord a => [a] -> [(Int, a)]
result vs = sort [(count v vs, v) | v <- rmdups vs]

winner :: Ord a => [a] -> a
winner = snd . last . result
