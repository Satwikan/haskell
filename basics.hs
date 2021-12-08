-- comments
{-
Multiline comments
-}

import Data.List
import System.IO

-- Int max: -2^63 min:2*63
maxInt = maxBound :: Int -- (:: for type casting)
minInt = minBound :: Int -- (:: not necessary)

always5 = 5 -- variables are fixed
-- always5 = 6 -- will give out an error

{-
functions are written before
for example mod is 'prefix' function
-}
modEx = mod 5 4
modEx2 = 5 `mod` 4 -- you can also use function like this (infix)

-- to do an addition with negative no add () around it
negNumEx = 5 + (-4)

-- sqrt fn accepts floating so type cast integer to it
num9 = 9 :: Integer
sqrtOf9 = sqrt (fromIntegral num9)

-- OPERATORS
trueAndFalse = True && False
trueOrFalse = True || False
notTrue = not(True) -- "not True" is also valid

-- LIST
-- list are signally linked (can't jump at specific element)
-- declaration of list
primeNumbers = [3, 5, 7, 11]
-- to generate a list
zeroToTen = [0..10]
-- (to append to list)
morePrimes = primeNumbers ++ [13, 17, 19, 23, 29]
-- ':' is used to join a list
favNum = 2 : 7 : 21 : 66 : []
-- list inside of list
multiList = [[3, 5, 7], [11, 13, 17]]

morePrimes2 = 2 : morePrimes

lenPrime = length morePrimes2

revPrime = reverse morePrimes2

isListEmpty = null morePrimes2

-- '!!' to access data at particular index
secondPrime = morePrimes2 !! 1

firstPrime = head morePrimes2 -- first value
lastPrime = last morePrimes2  -- last value

primeInit = init morePrimes2 -- all except last
first3Primes = take 3 morePrimes2
removed3Primes = drop 3 morePrimes2
is7InList = 7 `elem` morePrimes2 -- check for particular elem

-- 'repeat' generates infinite number until we tell it to stop
many2s = take 10 (repeat 2)

-- list comprehension
listTimes2 = [x * 2 | x <- [2, 4 .. 20]] -- [4,8,12,16,20,24,28,32,36,40]
-- add filters separated by ','
listTimes3 = [x * 3 | x <- [2, 4 .. 20], x * 3 <= 50, x `mod` 7 == 0] -- [42]
-- add more variables
multiTable = [[x * y | y <- [1..10]] | x <- [1..10]]

listBiggerThen5 = filter (>5) morePrimes
-- sort of while loop
evensUpTo20 = takeWhile (<= 20) [2, 4..]  -- [2,4,6,8,10,12,14,16,18,20]

-- TUPLE
randTuple = (1, "Random Value")
firstValue = fst randTuple -- 1
secondValue = snd randTuple --"Random Value"

-- 'zip' multiplies list and generates list of tuples
names = ["lisa", "john", "mark"]
addresses = ["123 Main", "234 North", "South Park"]
namesAndAddresses = zip names addresses
-- [("lisa","123 Main"),("john","234 North"),("mark","South Park")]

-- FUNCTIONS
-- every function must return something
-- funcName can't begin with uppercase letter
-- funcName param1 param2 = operations (returned value)
addMe :: Int -> Int -> Int -- type declaration (optional)
addMe x y = x + y

-- multiple declarations for adding conditions
whatAge :: Int -> String
whatAge 16 = "You study in high school"
whatAge 18 = "You can vote"
whatAge 21 = "You are an adult"
whatAge _ = "Nothing Important"

-- recursion
factorial :: Int -> Int
factorial 0 = 1
factorial n = n * factorial (n - 1)

-- guard
isOdd :: Int -> Bool
isOdd n 
    | n `mod` 2 == 0 = False
    | otherwise = True


whatGrade age
    | (age > 5) && (age <= 6) = "Kindergarten"
    | (age > 6) && (age <= 10) = "middle"
    | (age > 10) && (age <= 14) = "high school"
    | otherwise = "college"