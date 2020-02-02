--- Naming Values worksheet


------------------------------------------------
-- pi is a real number which is approximately
-- three and 1,416 ten thousandths. Define a Double
-- with this approximate value.

pie:: Double             
pie = 3.1415926


--------------------------------------------------
-- The formula for the area of a circle is 
-- pie times r squared, where r is the radius of 
-- the circle. Define a Double which is the area 
-- in square centimeters of a circle with diameter 
-- 10 centimeters.

areaCircleDiameter10:: Double
areaCircleDiameter10 = (pie * (10 / 2))**2


----------------------------------------------
-- Define an Integer that is the number of 
-- seconds in a week.

secondsIn1Week:: Integer
secondsIn1Week = 604800


---------------------------------------------
-- Define a List of Integers with the elements
-- 1 to 10 in increasing order

oneToTen:: [Integer]
oneToTen = [1..10]


---------------------------------------------
-- Define a string that is your first name

yourFirstName:: String
yourFirstName = "Daemon"


---------------------------------------------
-- Define an Integer that is your age

yourAge:: Integer     
yourAge = 21


---------------------------------------------
-- Define a Bool truthvalue that is 
-- (yourAge is greater than 19) or (yourFirstName is "Tim")

compareName:: Bool
compareName = (yourAge > 19) || (yourFirstName == "Tim")


---------------------------------------------
-- Define an Double that is the average of 
-- 3.0, 7.42, and 24.8

average:: Double
average = realToFrac (sum [3.0,7.42,24.8]) / fromIntegral (length [3.0,7.42,24.8])


---------------------------------------------
-- Define an Integer that is the remainder
-- when 14563 is divided by 22. Hint use the 
-- "mod" operator. Try it out to see how it works

remainder::Integer 
remainder = 14563 `mod` 22 


---------------------------------------------
-- Define a tuple that has your first name 
-- and your age.

tuple:: (String,Integer)
tuple = ("Daemon", 21)


---------------------------------------------
-- Compute the difference between your
-- approximation of pie, and the fraction
-- 22 divided by 7.

difference:: Double
difference = abs(pie - (22/7))


----------------------------------
-- add a type declaration
-- to each of the named expressions
i1:: Integer  -- I have done the first one for you
i1 = 45

i2:: String
i2 = "123"

i3:: Bool
i3 = 45 <= i1

i4:: Char
i4 = 'c'

i5:: [String]
i5 = ["abc","ok"]

i6:: String
i6 = head i5

i7:: String
i7 = tail "abc"  -- Recall a string is a shorthand for a list of Char

i8:: (Bool, Double)
i8 = (True,4.5)

i9:: [Integer]
i9 = [i1,34]

-------------------------------------------------
-- For each named expression replace "undefined"
-- with an expression with the same type as the declaration


j1:: (String,Integer)
j1 = ("abc", 32)

j2:: [Integer]
j2 = [1..10]

j3:: Char
j3 = 'c'


j4:: Double
j4 = 3.2


j5:: (Integer,String,Integer,Char)
j5 = (21, "Daemon", 8, 'M')

j6:: ([Char],(Bool,String))
j6 = (['a','b'], (True, "Kevin"))

j7:: [[Bool]]
j7 = [[True, True], [False, True, False]]

j8:: [(String,Bool)]
j8 = [("Nial", True),("Andy", False)]