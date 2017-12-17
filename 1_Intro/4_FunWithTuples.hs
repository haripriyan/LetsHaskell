-- Tuples are basic data structure which provides a convenient way of passing around packages of data
-- Tuples are denoted by below notation
-- Note that the tuples can have different types unlike lists
tupleOfTwo = (1, "One")
tupleOfMany = (2,"Two",[1,2,3], 3.14, True)
-- Also note that the tuples are of a fixed length, whereas lists are unbounded.

-- Returns a tuple of the head and length of a given list
headAndLength list = (head list, length list)

-- Accessing the elements of the tuple can be done through pattern matching
-- For simpler tuples, we can use the fst and snd functions

firstElemOfTuple = fst tupleOfTwo -- Returns 1
secondElemOfTuple = snd tupleOfTwo -- Returns "One"

-- Remember tuples are good to use as long as they are simple with 3 or less elements
-- And when they aren't needed to be passed around for too long
-- Otherwise they can be messy to handle. Consider using custom Data types in such cases
