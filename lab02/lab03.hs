a1:: Bool
a1 = True                   -- Hint  - What type is True

a2:: Integer
a2 = 7 * 6         

a3:: Integer
a3 = 99                  

a4:: Int
a4 = fromIntegral (length [4.0])           

a6:: String
a6 = "Empty"               

a7:: Integer
a7 = if a3 == 99 then 1 else 0     

a8:: Char
a8 = if 2<5 then 'a' else 'b' 

a9:: Int -> Int
a9 x = x `div` 2

a10:: Int -> Int 
a10 = a9

a11:: Int -> Bool
a11 x = (x == 4) && True     