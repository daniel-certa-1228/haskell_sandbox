-- Guards
-- Guards are a way of testing whether some property of a value (or several of them) are true or false.

-- basically a case statement
bmiTell :: (RealFloat a) => a -> String
bmiTell bmi
    | bmi <= 18.5 = "You're underweight, you emo, you!"
    | bmi <= 25.0 = "You're in the normal range."
    | bmi <= 30.0 = "You could lose some weight."
    | otherwise   = "You are in danger."

bmiTell_2 :: (RealFloat a) => a -> a -> String
bmiTell_2 weight height
    | weight / height ^ 2 <= 18.5 = "You're underweight, you emo, you!"
    | weight / height ^ 2 <= 25.0 = "You're in the normal range."
    | weight / height ^ 2 <= 30.0 = "You could lose some weight."
    | otherwise   = "You are in danger."
--bmiTell_2 90.7185 1.8288 ==  "You could lose some weight."

bmiTell_3 :: (RealFloat a) => a -> a -> String
bmiTell_3 weight height
    | bmi <= 18.5 = "You're underweight, you emo, you!"
    | bmi <= 25.0 = "You're in the normal range."
    | bmi <= 30.0 = "You could lose some weight."
    | otherwise   = "You are in danger."
    where bmi = weight / height ^ 2

max' :: (Ord a) => a -> a -> a
max' a b
    | a>b = a
    | otherwise = b
-- max' 12 3 == 12

myCompare :: (Ord a) => a -> a -> Ordering
a `myCompare` b
    | a > b     = GT
    | a == b    = EQ
    | otherwise = LT
-- 5 `myCompare` 9 == LT
-- 5 `myCompare` 1 == GT
-- 5 `myCompare` 5 == EQ

