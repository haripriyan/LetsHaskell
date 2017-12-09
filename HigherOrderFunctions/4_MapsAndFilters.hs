-- Map is a higher order function, which returns a new list by applying a given function to every element of the list
-- Lets say we have the below list of Strings
strings = ["Whats", "up", "Doc", "?"]

-- Now if we need to convert this list of strings to list of the length of each element
-- This can be done as below
lengths = map length strings

-- The map function takes in a tranforming function and the list as its arguments
-- The transforming function in this case is the length function
-- Note that the transforming function's input argument is same as the list element type

-- The filter operation looks up a list and returns a trimmed down list, where each element satisfies the given predicate function
-- If we have a list of integers, lets filter out elements which are multiple of 3
numbers = [2,4,6,742,345,5,780,325]
divisibleBy3 x = (mod x 3) == 0
divBy3 = filter divisibleBy3 numbers

-- Now head out to the Tryouts 5
