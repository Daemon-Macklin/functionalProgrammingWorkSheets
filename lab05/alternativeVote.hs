-- Alternative vote

ballots :: [[String]]
ballots = [["Red","Green"],
           ["Blue"],
           ["Green","Red","Blue"],
           ["Blue","Green","Red"],
           ["Green"]]

rmempty :: Eq a => [[a]] -> [[a]]
rmempty = filter (/= [])

elim :: Eq a => a -> [[a]] -> [[a]]
elim x = map (filter (/= x))

rank :: Ord a => [[a]] -> [a]
rank = map snd . result . map head

winner' :: Ord a => [[a]] -> a
winner' bs = case rank (rmempty bs) of
                [c]    -> c
                (c:cs) -> winner' (elim c bs)