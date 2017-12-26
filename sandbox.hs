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
-- get a value out of a list by index
value6 = "Dan Certa" !! 6
value2 = [1,2,3,4,5,6,7,8,9] !! 2

--lists can contain lists
bList = [[1,2,3,4,5],[5,3,3,3,3],[3,2,1,4,5],[12,13,14]]
-- add to end
bList2 = bList ++ [[1,1,1,1,1]]
-- prepend
bList3 = [6,6,6,6]:bList
-- get 3rd list from list of lists
bList4 = bList !! 2

--lists can be compared.  they are compared in lexicographal order
comp1 = [3,2,1] > [2,1,0]
--3 is greater than 2, so evaluates to True
comp2 = [3,2,1] > [2,10,100]
--2 is greater than the missing 0, so True
comp3 = [3,4,2] > [3,4]
-- equality operator is what it is
comp4 = [3,4,2] == [3,4,2]

headTest = head [5,4,3,2,1] -- 5
tailTest = tail [5,4,3,2,1] -- [4,3,2,1]
lastTest = last [5,4,3,2,1] -- 1
initTest = init [5,4,3,2,1] -- [5,4,3,2]

lengthTest = length [5,4,3,2,1] -- 5

-- null checks if a list is empty
null1 = null [1,2,3,4,5] --False
null2 = null [] -- 

rev = reverse [6,5,4,3,2,1] -- [1,2,3,4,5,6]

-- 'take' takes a number and a list.  It extracts that many elements from the beginning of the list
takeTest1 = take 3 [1,2,3,4,5,6,7] --[1,2,3]
takeTest2 = take 1 [3,4,5,6] --3
takeTest3 = take 0 [9,8,7,6,5,4,3,2] -- []
-- 'drop' drops the selected amout of elements
dropTest1 = drop 3 [1,2,3,4,5,6,7,8,9] -- [4,5,6,7,8,9]
dropTest2 = drop 100 [1,2,3] -- []
-- minimum/maximum
minTest = minimum [5,9,8,1,78,90] -- 1
maxTest = maximum [1,3,5,800,9,1,1,15] --800
--sum, is like reduce
sumTest = sum [1,2,3,4,5,6,7,8,9] -- 45
prodTest = product [1,2,3,4] --24
--`elem` detects whether a value is an element on a list
elemTest1 = 10 `elem` [1,2,3,4,5] --False
elemTest2 = 5 `elem` [1,2,3,4,5] --True
elemTest3 = 'a' `elem` ['a'..'z'] --True

range1 = [1..30] --[1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30]
range2 = ['a'..'z'] --"abcdefghijklmnopqrstuvwxyz"
range3 = ['K'..'Z'] --"KLMNOPQRSTUVWXYZ"

--step ranges
stepRange1 = [2,4..20] --[2,4,6,8,10,12,14,16,18,20]
stepRange2 = [3,6..20] -- [3,6,9,12,15,18]

-- 'cycle' will cycle a list into an infinite list.  Use 'take' to limit it
cycle1 = take 10 (cycle[1,2,3])
cycle2 = take 14 (cycle "CHUD ")
-- repeat will do the same for a single value
repeat1 = take 10 (repeat 6)


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
