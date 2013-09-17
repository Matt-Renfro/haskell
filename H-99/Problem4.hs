-- Find the number of elements of a list
module Problem4 where

--myLength :: [a] -> a
myLength xs = let pred x y = x+1
			  in foldl (pred) 0 xs