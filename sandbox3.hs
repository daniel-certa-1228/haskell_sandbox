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