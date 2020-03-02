mylength:: [a] -> Int
mylength [] = 0
mylength (_:xs) = 1 + mylength xs  


sundown:: Int -> Int
sundown 0 = 0
sundown n = n + sundown(n-1)

exponention:: Int -> Int -> Int
exponention _ 0 = 1
exponention n e = n * exponention n (e-1)  

fibonacci :: Int -> Int
fibonacci 0 = 0
fibonacci 1 = 1
fibonacci n = fibonacci (n - 1) + fibonacci (n - 2) 

mySum :: Num a => [a] -> a
mySum [] = 0
mySum (n:ns) = n + mySum ns

myProduct :: Num a => [a] -> a
myProduct [] = 1
myProduct (n:ns) = n * myProduct ns

doubleAll :: Num a => [a] -> [a]
doubleAll [] = []
doubleAll (n:ns) = n*2 : doubleAll ns

myInit :: [a] -> [a]
myInit [_] = []
myInit (x:xs) = x : myInit xs 

myAnd :: [Bool] -> Bool
myAnd [] = True
myAnd (x:xs) = x == myAnd xs

myConcat :: [[a]] -> [a]
myConcat [] = []
myConcat (x:xs) = x ++ myConcat xs

myReplicate :: Int -> a -> [a]
myReplicate 0 _ = []
myReplicate n a = a : myReplicate (n-1) a

insert :: Ord a => a -> [a] -> [a]
insert a [] = [a]
insert a (x:xs) | a <= x = a : x : xs
                | otherwise = x: insert a xs

insertSort :: Ord a => [a] -> [a]
insertSort [] = []
insertSort (x:xs) = insert x (insertSort xs)

myNth :: Ord a => [a] -> Int -> a
myNth (x:xs) 0 = x
myNth (x:xs) n = myNth (xs) (n-1)

myElm :: Ord a => [a] -> a -> Bool
myElm [] _ = False
myElm (x:xs) a = a == x || myElm xs a
 
-- smaller:: Int -> [Int] -> [Int]
-- smaller int (n:ns) = [ x | x <- ns, int <= n]

myDrop :: [a] -> Int -> [a]
myDrop [] _ = []
myDrop (x:xs) 0 = (x:xs)
myDrop (_:xs) n = [] ++ myDrop xs (n-1)