-- Higher Order Functions
multThree :: (Num a) => a -> a -> a -> a
multThree x y z = x * y * z

multTwoWithNine = multThree 9
answerOne = multTwoWithNine 2 3 --54 

multWithEighteen = multTwoWithNine 2
answerTwo = multWithEighteen 10 -- 180
