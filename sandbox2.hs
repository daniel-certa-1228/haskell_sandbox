-- Types and Typeclasses
-- When writing our own functions, we can choose to give them an explicit type declaration.
removeNonUppercase :: String -> String --maps from string to string
removeNonUppercase st = [c | c <- st, c `elem` ['A'..'Z']]
--removeNonUppercase "The Rain In Spain" == "TRIS"

--The return type is the last item in the declaration and the parameters are the first three.
addThree :: Int -> Int -> Int -> Int
addThree x y z = x + y + z
-- addThree 1 2 3 == 6 

-- Int ranges from -2147483648 to 2147483647
-- Integer can be REALLY BIG numbers
factorial :: Integer -> Integer
factorial n = product [1..n]
--factorial 50 == 30414093201713378043612608166064768844377641568960512000000000000

--Float is real floating point with single precision
circumference :: Float -> Float
circumference r = 2 * pi * r
-- circumference 4 = 25.132742

--Double is real floating point with double precision
circumference' :: Double -> Double
circumference' r = 2 * pi * r
-- circumference' 4 = 25.132741228718345

