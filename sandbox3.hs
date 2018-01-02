--Syntax in Functions

--Pattern matching

lucky :: (Integral a) => a -> String
lucky 7  = "LUCKY NUMBER 7"
lucky x = "Sorry, you're out of luck, pal!"

--Pattern mathing always goes from the top statement down
sayMe :: (Integral a) => a -> String
sayMe 1 = "One"
sayMe 2 = "Two"
sayMe 3 = "Three"
sayMe 4 = "Four"
sayMe 5 = "Five"
sayMe x = "Not between 1 and 5"

--recrsive factorial
factorial :: (Integral a) => a -> a
factorial 0 = 1
factorial n = n * factorial (n-1)

charName :: Char -> String
charName 'a' = "Albert"
charName 'b' = "Brohan"
charName 'c' = "Cecil"
--there is no generic catchall function, so charname 'f' throws an exception

addVectors_1 :: (Num a) => (a, a) -> (a, a) -> (a, a)
addVectors_1 a b = (fst a + fst b , snd a + snd b)
--addVectors_1 (1,2) (3,4) == (4,6)

addVectors_2 :: (Num a) => (a, a) -> (a, a) -> (a, a)
--PATTERN MATCHING
addVectors_2 (x1,y1) (x2,y2) = (x1 + x2, y1 + y2)
--addVectors_1 (1,2) (3,4) == (4,6)

--create our own functions to extract values from triples
first :: (a, b, c) -> a
first (x, _, _) = x
--first (1,2,3) = 1
second :: (a, b, c) -> b
second (_, y, _) = y
-- second (1,2,3)
third :: (a, b, c) -> c
third (_, _, z) = z
--third (1,2,3) == 3

--Pattern matching in list comprehensions
xs = [(1,3), (4,3), (2,4), (5,3), (5,6), (3,1)]
summing = [a+b | (a,b) <- xs]

--Pattern match against list
head' :: [a] -> a
head' [] = error "Can't call head on an empty list, dipshit."
head' (x:_) = x
-- head' [5,4,3,2,1] == 5
-- head' "Hello" == 'H'
-- 'h':'e':'l':'l':'o':[] == "hello"