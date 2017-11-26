-- Write a function to double all the elements in a number list
doubleAll list = if null list
                  then []
                  else (2 * head list) : (doubleAll (tail list))

-- Write a function to filer out all odd numbers from the elements in a number list
filterEven list = if null list
                  then []
                  else if (head list) `mod` 2 == 0
                      then (head list) : filterEven (tail list)
                      else filterEven (tail list)

-- I KNOW THESE ARE CRAP CODE and probably not what you were hoping to do in Haskell
-- But hey stay with with me till we learn more
-- We will do a much better job trust me ;)
