import Data.Char
--- [1..6]

--- [x*10 | x <- [1..6]]

--- [(x,y) | x <- [1,2,3], y <- [1,2,3]]

--- [(x,x+1) | x <- [1,2,3,4]]

--- [(x+1,1) | x <- [0..4]]

--- [(x,x^2) | x <- [1..10]]

--- (1,4)(1,5)(2,4)(2,5)(3,4)(3,5)

--- (4,1)(5,1)(4,2)(5,2)(5,3)(4,3)

isEven :: Integer -> Bool 
isEven n = (n `mod` 2 == 0)


doubleAll :: [Integer] -> [Integer]
doubleAll xs = [x*2 | x <- xs]


capitalise :: String -> String
capitalise str = [toUpper x | x <- str]

sigma ::Int
sigma = sum [x^2 | x <- [1..100]]

sigma' :: Int -> Int
sigma' x = sum [x^2 | x <- [1..x]]

matches:: Integer -> [Integer] -> [Integer]
matches x xs = [ x | (x',i) <- zip xs [0..], x==x' ]

grid :: Int -> Int -> [(Int, Int)]
grid x y = [(x,y) | x <- [0..x], y <- [0..y]]

square :: Int -> [(Int, Int)]
square n = [(x,y) | x <- [0..n], y <- [0..n], x /= y]

pyths :: Int -> [(Int, Int, Int)]
pyths n1 = [(x,y,z) | x <- [1..n1], y <- [1..n1], z <- [1..n1], x^2 + y^2 == z^2]

factors :: Int -> [Int]
factors n = [x | x <- [1..n], n `mod` x == 0]

perfects :: Int -> [Int]
perfects n = [x | x <- [1..n], sum(init(factors n)) == x]