-- Higher Order Functions
multThree :: (Num a) => a -> a -> a -> a
multThree x y z = x * y * z

multTwoWithNine = multThree 9
answerOne = multTwoWithNine 2 3 --54
-- 9*2*3 == 54

multWithEighteen = multTwoWithNine 2
answerTwo = multWithEighteen 10 -- 180
-- 9*2*10 == 180

compareWithHundred :: (Num a, Ord a) => a -> Ordering
compareWithHundred x = compare 100 x

--this also works
compareWithHundred2 :: (Num a, Ord a) => a -> Ordering
compareWithHundred2 = compare 100

