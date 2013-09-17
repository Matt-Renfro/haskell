--Find the K'th element of a list. The first element in the list is number 1
module Problem03 where

elementAt :: [t] -> Int -> t
elementAt [] index = if index >= 0 then error "index out of bounds" else undefined
elementAt xs index
    |index < 0 = error "index less than 0"
    |null xs = error "can't index empty list"
elementAt (x:xs) index = if index == 0 then x else elementAt xs (index-1) 



elementAtCheat :: [t] -> Int -> t
elementAtCheat xs a = (xs !! a)
