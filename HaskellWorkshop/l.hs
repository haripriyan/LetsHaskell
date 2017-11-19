import Data.Char

x :: Integer
x = 3

func1 :: Integer -> Integer
func1 i = i + x

-- Here
func2 :: Integer -> Integer -> Integer
func2 i j = (i + j) * 3

func2m :: Integer -> Integer -> Integer
func2m i j = (i + j) * 3

func3 :: (Integer -> Integer) -> Integer
func3 k = k 99


data Shape =
  Circle Integer | Square Integer | Rectangle Integer Integer
  deriving (Eq)


instance Show Shape where
  show = \_ -> "SOme shape"

pie :: Integer
pie = 3

perimeter :: Shape -> Integer
perimeter (Circle r) = r * pie * 2
perimeter (Square s) = s * 4
perimeter (Rectangle w h) = (w + h) * 2

perimeter1 :: Shape -> Integer
perimeter1 =
  \sh -> case sh of
          Circle r -> 2 * pie * r
          Square s -> 4 * s
          Rectangle w h ->  2 * ( w + h)

-- Here
data Three a =
  Three a a a
  deriving (Eq, Show)

mapThree :: (x -> y) -> Three x -> Three y
mapThree eff (Three x1 x2 x3) =
  Three (eff x1) (eff x2) (eff x3)

-- Here
--data Natural = Zero | Successor Natural
--  deriving (Eq, Successor)

--add :: Natural -> Natural -> Natural
--add Zero x = x
--add (Sucessor q) x =
--  Sucessor (add q x)

--four = (Successor(Successor(Successor(Successor Zero))))
--five = Successor four

class Equal a where
  equal :: a -> a -> Bool

instance Equal Shape where
    equal _ _ = True
