smallFunc = (succ 9) + (max 5 4) + 1

doubleMe x = x + x
doubleUs x y = doubleMe x + doubleMe y

doubleSmallNumber x = if x > 100
    then x
    else x*2

-- add 2 lists
addLists = [1,2,3,4,5] ++ [6,7,8,9,10]
addStrings = "hello" ++ " " ++ "world"
addLetters = ['w','o'] ++ ['o','t']
-- cons operator (prepend)
cat = 'A':" small cat."
nums = 5:[1,2,3,2,1]
-- 'xs' is a variable that is a range, run it with `boomBang [1..15]` or similar
boomBang xs = [if x < 10 then "BOOM!" else "BANG!" | x <- xs, odd x]
-- multiple predicates
notPredicates = [x | x <- [10..20], x/=13, x/=15, x/=19]
-- mulitple lists
multiLists = [x*y | x <- [2,5,10], y <- [8,10,11]]
-- multiple lists with predicate filtering
mulitPredLists = [x*y | x <- [2,5,10], y <- [8,10,11], x*y > 50]
--list comprehension that uses strings
nouns = ["hobo", "frog", "pope"]
adjectives = ["lazy", "grouchy", "scheming"]
phrases = [adjective ++ " " ++ noun | adjective <- adjectives, noun <- nouns]
-- write a length function
-- underscore _ serves as a temporoary variable
length' xs = sum [1 | _ <- xs]
--list comprehension to remove everything except uppercase letters
removeNonUppercase st = [c | c <- st, c `elem` ['A'..'Z']]
--remove odd numbers from multiple lists
xxs = [[1,3,5,2,3,1,2,4,5],[1,2,3,4,5,6,7,8,9],[1,2,4,2,1,6,3,1,3,2,3,6]]
removeOdds = [ [x | x <- xs, even x] | xs <- xxs]
