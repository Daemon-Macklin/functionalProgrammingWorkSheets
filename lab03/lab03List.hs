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
square x = concat [[(x,y) | x <- [0..x], y <- [0..x], x /= y], [(y,x) | x <- [0..x], y <- [0..x], x /= y]]

--myReplicate :: Int -> a -> [a]
--myReplicate int a = [x | x <- ]