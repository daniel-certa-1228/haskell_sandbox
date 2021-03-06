smallFunc = (succ 9) + (max 5 4) + 1

doubleMe x = x + x
doubleUs x y = doubleMe x + doubleMe y

doubleSmallNumber x = if x > 100
    then x
    else x*2

-- add 2 lists
addLists = [1,2,3,4,5] ++ [6,7,8,9,10] --[1,2,3,4,5,6,7,8,9,10]
addStrings = "hello" ++ " " ++ "world" --"hello world"
addLetters = ['w','o'] ++ ['o','t'] --"woot"
-- cons operator (prepend)
cat = 'A':" small cat." --"A small cat."
nums = 5:[1,2,3,2,1] --[5,1,2,3,2,1]
-- get a value out of a list by index
value6 = "Dan Certa" !! 6 -- 'r'
value2 = [1,2,3,4,5,6,7,8,9] !! 2 -- 3

--lists can contain lists
bList = [[1,2,3,4,5],[5,3,3,3,3],[3,2,1,4,5],[12,13,14]]
-- add to end
bList2 = bList ++ [[1,1,1,1,1]] -- [[1,2,3,4,5],[5,3,3,3,3],[3,2,1,4,5],[12,13,14],[1,1,1,1,1]]
-- prepend
bList3 = [6,6,6,6]:bList --[[6,6,6,6],[1,2,3,4,5],[5,3,3,3,3],[3,2,1,4,5],[12,13,14]]
-- get 3rd list from list of lists
bList4 = bList !! 2 --[3,2,1,4,5]

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

--list comprehensions
lc1 = [x*2 | x <- [1..10]] -- [2,4,6,8,10,12,14,16,18,20]
--list comprehensions with predicate
lc2 = [x*2 | x <- [1..10], x*2 >=12 ] -- [12,14,16,18,20]
lc3 = [x | x <- [50..100], x `mod` 7 == 3]

-- 'xs' is a variable that is a range, run it with `boomBang [1..15]` or similar
boomBang xs = [if x < 10 then "BOOM!" else "BANG!" | x <- xs, odd x] --["BOOM!","BOOM!","BOOM!","BOOM!","BOOM!","BANG!","BANG!","BANG!"]
-- multiple predicates
notPredicates = [x | x <- [10..20], x/=13, x/=15, x/=19] --[10,11,12,14,16,17,18,20]
-- mulitple lists
multiLists = [x*y | x <- [2,5,10], y <- [8,10,11]] --[16,20,22,40,50,55,80,100,110]
-- multiple lists with predicate filtering
mulitPredLists = [x*y | x <- [2,5,10], y <- [8,10,11], x*y > 50] --[55,80,100,110]
--list comprehension that uses strings
nouns = ["hobo", "frog", "pope"]
adjectives = ["lazy", "grouchy", "scheming"]
phrases = [adjective ++ " " ++ noun | adjective <- adjectives, noun <- nouns] --["lazy hobo","lazy frog","lazy pope","grouchy hobo","grouchy frog","grouchypope","scheming hobo","scheming frog","scheming pope"]

-- write a length function
-- underscore _ serves as a temporoary variable
length' xs = sum [1 | _ <- xs] -- length' [15..30] == 16
--list comprehension to remove everything except uppercase letters
removeNonUppercase st = [c | c <- st, c `elem` ['A'..'Z']] -- removeNonUppercase "IdontLIKEFROGS" = "ILIKEFROGS"

--remove odd numbers from multiple lists
xxs = [[1,3,5,2,3,1,2,4,5],[1,2,3,4,5,6,7,8,9],[1,2,4,2,1,6,3,1,3,2,3,6]]
removeOdds = [ [x | x <- xs, even x] | xs <- xxs] -- [[2,2,4],[2,4,6,8],[2,4,2,6,2,6]]

--Tuples
--Use tuples when you know in advance how many components some piece of data should have.

--These 2 functions only work in pairs
tupFirst = fst (8,11) -- 8
tupFirst2 = fst ("Wow", False) -- "Wow"

tupSecond = snd (8,11) -- 11
tupSecond2 = snd ("Wow", False) --False

-- 'zip' takes 2 lists and zips them together into one list by joining the matching elements into pairs
zip1 = zip [1,2,3,4,5] [8,8,8,8,8] --[(1,8),(2,8),(3,8),(4,8),(5,8)]
zip2 =  zip [1..5] ["one", "two", "three", "four", "five"] --[(1,"one"),(2,"two"),(3,"three"),(4,"four"),(5,"five")]

--lists of different lengths can be zippped
zipDiff = zip [5,3,2,1,3,4,5,6,7,8,9] ["hello", "there", "dingus"] --[(5,"hello"),(3,"there"),(2,"dingus")]

-- also finite lists can be zipped to infinite lists
zipInf = zip [1..] ["apple", "orange", "cherry", "mango"]

-- triangles
triangles = [ (a,b,c) | c <- [1..10], b <- [1..10], a <- [1..10]]  --[(1,1,1),(2,1,1),(3,1,1),(4,1,1),(5,1,1),(6,1,1),(7,1,1),(8,1,1),(9,1,1),(10,1,1) ... (1,10,10),(2,10,10),(3,10,10),(4,10,10),(5,10,10),(6,10,10),(7,10,10),(8,10,10),(9,10,10),(10,10,10)]

rightTriangles = [ (a,b,c) | c <- [1..10], b <- [1..c], a <- [1..b], a^2 + b^2 == c^2] -- [(3,4,5),(6,8,10)]

rightTriangles' = [ (a,b,c) | c <- [1..10], b <- [1..c], a <- [1..b], a^2 + b^2 == c^2, a+b+c == 24] --[(6,8,10)]
