import Data.Char

mytwice :: (a -> a) -> a -> a
mytwice f x = f (f x)

double :: Num a => a -> a
double x = x*2

myList :: (a -> b) -> (a -> Bool) -> [a] -> [b]
myList f p xs = map f (filter p xs)

myMap :: (a -> b) -> [a] -> [b]
myMap p [] = []
myMap p (x:xs) = p x : myMap p xs

myUpper :: (a -> b) -> [a] -> [b]
myUpper p xs = map p xs

allSquared :: Num a => [a] -> [a]
allSquared xs = map (\x -> x^2) xs

nestedreverse :: [String] -> [String]
nestedreverse xs = reverse (map reverse xs) 

push :: a -> [a] -> [a]
push a xs = a:xs 

front :: a -> [[a]] -> [[a]]
front a xs = map (push a) xs  

myLength :: [String] -> [Int]
myLength xs = map (length) xs 

sumsq :: Int -> [Int]
sumsq n = map (^2) [1..n]

myFilter p x = concat.map p where p x = 2


vowels :: String
vowels = "aeiouAEIOU"

wvowels :: String -> String
wvowels a = [x | x <- a, all (==True) (map (/=x) vowels) ] 

wiv :: [String] -> [String]
wiv xs = map (wvowels) xs