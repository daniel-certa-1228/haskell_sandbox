--Recursion
maximum' :: (Ord a) => [a] -> a
maximum' [] = error "maximum of empty list"
maximum' [x] = x
maximum' (x:xs)
    | x > maxTail = x
    | otherwise = maxTail
    where maxTail = maximum' xs
--maximum' [1,2,3,4,5] == 5
--maximum' [13] == 13
--maximum' [] == "maximum of empty list"

--for maximum' [2,5,1]
-- maximum' [2,5,1] = max 2 (maximum' [5,1] = max 5 (maximum' [1] = 1))

--Replicate
repExample = replicate 3 5
--[5,5,5]
replicate' :: (Num i, Ord i) => i -> a -> [a]
replicate' n x
    | n <= 0 = []
    | otherwise = x:replicate' (n-1) x
-- replicate' 4 6 == [6,6,6,6]

--Take
takeExample = take 3 [1,2,3,4,5,6,7]
--[1,2,3]
take' :: (Num i, Ord i) => i -> [a] -> [a]
take' n _
    | n <= 0 = []
take' _ []   = []
take' n (x:xs) = x : take' (n-1) xs

-- take' 3 [4,3,2,1] = 4 : take' (3-1) [3,2,1] : take' (2-1) [2,1] : take' (1-1) [1]

reverse' :: [a] -> [a]
reverse' [] = []
reverse' (x:xs) = reverse' xs ++ [x]

--reverse' [5,4,3,2,1] = [1,2,3,4,5]
