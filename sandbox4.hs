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

initials :: String -> String -> String
initials firstname lastname = [f] ++ ". " ++ [l] ++ "."
    where   (f:_) = firstname
            (l:_) = lastname
--initials "Daniel" "Certa" == "D. C."

calcBmis :: (RealFloat a) => [(a,a)] -> [a]
calcBmis xs = [bmi w h | (w, h) <- xs]
    where bmi weight height = weight/height^2
-- calcBmis [(90,2), (80,1.5)] == [22.5,35.55555555555556]

--'let' bindings
cylinder :: (RealFloat a) => a -> a -> a
cylinder r h =
    let sideArea = 2 * pi * r * h
        topArea = pi * r ^2
    in  sideArea + 2 * topArea
--The form is let <bindings> in <expression>
-- cylinder 10 10 == 1256.6370614359173

letExample = 4 * (let a=9 in a+1) + 2
-- 42
letExample2 = [let square x = x*x in (square 5, square 3, square 2)]
-- [(25,9,4)]
letExample3 = (let a=100; b=200; c=300 in a*b*c, let foo="Hey "; bar="there!" in foo ++ bar)
--(6000000,"Hey there!")
letExample4  = (let (a,b,c) = (1,2,3) in a+b+c) * 100
-- 600

calcBmisLet :: (RealFloat a) => [(a,a)] -> [a]
calcBmisLet xs = [bmi | (w,h) <- xs, let bmi = w/h^2]
-- calcBmis [(90,2), (80,1.5)] == [22.5,35.55555555555556]
calcBmisLet2 :: (RealFloat a) => [(a,a)] -> [a]
calcBmisLet2 xs = [bmi | (w,h) <-xs, let bmi = w/h^2, bmi>=25.0]

--case expressions
head' :: [a] -> a
head' [] = error "No head on an empty list, dummy."
head' (x:_) = x
--head' [2,5,6,8] == 2

head2 :: [a] -> a
head2 xs = case xs of [] -> error "No head for empty lists!"  
                      (x:_) -> x
--head2 [2,5,6,8] == 2

describeList :: [a] -> String
describeList xs = "The list is " ++ case xs of [] -> "empty."
                                               [x] -> "a singleton list."
                                               xs -> "a longer list." 
-- describeList [1,2] == "The list is a longer list."
-- describeList [12] == "The list is a singleton list."
-- describeList [] == "The list is empty."

describeList2 :: [a] -> String
describeList2 xs = "The list is " ++ what xs
    where what [] = "empty."
          what [x] = "a singleton list."
          what xs = "a longer list."
-- describeList2 [3,4,5] == "The list is a longer list."
-- describeList2 [65] == "The list is a singleton list."
-- describeList [] == "The list is empty."