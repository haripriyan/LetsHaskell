-- zip and zipWith are functions on lists
-- zip takes in 2 lists and returns a new list of tuples with each element being the corresponding index elements of the lists
x = zip [1, 2, 3, 5] [7, 8, 9]
-- x will be [(1,7),(2,8),(3,9)]
-- Since zip needs both the elements of the list, its size will be equal to the smaller list of the two inputs.

-- Using zipWith we can pass in a function to denote how we want the to lists to be zipped
productOfLists = zipWith (*) [1, 2, 3, 5] [7, 8, 9]
-- [7,16,27]

-- There are also functions to zip more than 2 lists
-- They are zipWith3, zipWith 4 and so on
add3 a b c = a + b + c
zipping3Lists = zipWith3 (add3) [1, 2, 3, 5] [7, 8, 9] [23, 52, 72]
