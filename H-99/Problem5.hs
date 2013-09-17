--Reverse a list
module Problem05 where

myReverse :: [a] -> [a]
myReverse xs = let rv acc lst = lst:acc
				   in foldl rv [] xs