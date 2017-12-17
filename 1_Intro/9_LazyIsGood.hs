-- Haskell by definition is a Lazy language
-- This means that the values are not computed unless they are absolutely needed

-- This might be simple to understand, but is far more powerful with what it can do
-- Consider this function which produces and infinite list starting from n
intListFrom n = n : (intListFrom (n+1))
intsFrom1 = intListFrom 1
-- Go ahead and try to get intsFrom1. It goes on creating the list, infinitely (ofcourse limited by the memory)
-- Press Ctrl+C to break

-- Now what if you want to know if the above list is Null
isListNull = null intsFrom1

-- Now when you execute isListNull, it executes intsFrom1. But does it keep going on like the previous instance?

-- Answer is it doesnot. That is because, Haskell is lazy
-- The null function just needed the first element of the list not be null.
-- Hence Haskell didnt bother calculating the rest of the list!!

-- So what happpens when you try to get the second element of the list intsFrom1?
secondElemOfList (a:b:xs) = b

-- Now lets head out to the TryOuts 4.
