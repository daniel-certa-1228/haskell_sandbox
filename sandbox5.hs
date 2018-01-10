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