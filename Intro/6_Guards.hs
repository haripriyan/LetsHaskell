-- Guards are used to look into the value of the data, whereas pattern matching only looks at the structure
-- Guards can be used along with pattern matching for more robust functions
pow2 n
    | n == 0 = 1  -- | is the guard separator followed by the guard condition
    | otherwise = 2 * (pow2 (n-1)) -- otherwise is a boolean case which is used to catch all other cases

-- Now again revisit the Tryouts 2, this time further simplifying it using guards along side Pattern matching
