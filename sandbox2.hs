-- Types and Typeclasses
-- When writing our own functions, we can choose to give them an explicit type declaration.
removeNonUppercase :: String -> String --maps from string to string
removeNonUppercase st = [c | c <- st, c `elem` ['A'..'Z']]
--removeNonUppercase "The Rain In Spain" >> "TRIS"

addThree :: Int -> Int -> Int -> Int
addThree x y z = x + y + z
-- addThree 1 2 3 >> 6
