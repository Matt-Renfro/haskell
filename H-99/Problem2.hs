--Find the last but one element of a list.
module Problem02 where

lst = [1,2,3,4,5]

myButLast :: [a] -> a
myButLast (x:y:[]) = x
myButLast (_:xs) = myButLast xs

myButLast' :: [a] -> a
myButLast' [x,_] = x
myButLast' (x:xs) = myButLast' xs