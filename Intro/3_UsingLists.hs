-- Using lists in Haskell
x = [1,2,3]

-- Empty list
empty = []

-- Adding elements to list
-- The element 4 is added with the elements of x and returns a new list
y = 4 : x

-- The : operator is called 'cons'
-- The square braces above are really short hand of the below format
-- The lists are always ended with an empty list
x' = 1 : (2 : (3 : []))
y' = 4:1:2:3:[]

-- Strings are really just special type of char list
string = "String"
string' = 'S':'t':'r':'i':'n':'g':[]

-- Concatenating lists
-- ++ is the concatenation operator
hello = "Hello"
world = "World"

welcomeMessage = hello ++ world

-- Accessing the list elements
-- The 'head' function returns the first element of the list
headOfHello = head hello -- returns H
headOfX = head x -- returns 1

-- The tail function returns everything element of the list except the head
tailOfHell = tail hello -- returns "ello"
tailOfX = tail x -- returns [2,3]

-- The 'null' function tests for the empty list

isEmpty = null empty -- Returns a boolean True/False


-- Now we can go to the TryOuts/1_ListFunctions and do some basic Haskell Code
