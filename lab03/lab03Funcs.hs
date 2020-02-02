halve :: [a] -> ([a], [a])
halve list = splitAt (length list `div` 2) list

third :: [a] -> a
third list  | length list < 3 = error "Not enough Items in list"  
            | otherwise = list!! 2

safetail :: [a] -> [a]
safetail list | null list = []
              | otherwise = tail list

orOperator :: Int -> Int -> Bool
orOperator x y  | x == 4 || y == 4 = True
                | x == 5 || y == 5 = True
                | otherwise = False

lucky :: Integral a => a -> String
lucky a | a == 7 = "Lucky you...Proceed directly to buy a lottery ticket"
        | a == 13 = "You, sadly are quite unlucky. Do not, under any circumstances invest money today"
        | otherwise = "Mmmm... is a good name for Micheals App"

firstTuple :: (a,b,c) -> a
firstTuple (a, _, _) = a

secondTuple :: (a,b,c) -> b
secondTuple (_,b,_) = b

thirdTuple :: (a,b,c) -> c
thirdTuple (_,_,c) = c

luhnDouble :: Int -> Int
luhnDouble x | x * 2 > 9 = (x*2) - 9
             | otherwise = x * 2


luhnAlg :: Int -> Int -> Int -> Int -> Bool
luhnAlg a b c d = x `mod` 10 == 0 
                where x = sum [luhnDouble a, b, luhnDouble c, d]

luhnCheck :: Int -> Int -> Int -> Int
luhnCheck a b c = x `mod` 10
                where x = sum [luhnDouble a, b, luhnDouble c] * 9
