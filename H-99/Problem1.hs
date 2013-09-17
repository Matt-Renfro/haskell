-- Find the last element of a list
module Problem1 where

myLast :: [t] -> t
myLast [x] = x
myLast (_:xs) = myLast xs

