--Find the K'th element of a list. The first element in the list is number 1
module Problem03 where

elementAt :: [t] -> Int -> t
elementAt [] index = if (index > 1) || (index < 0) then error "index out of bounds" else error "index out of bounds"
elementAt xs index
    |index < 1 = error "index less than 1"
    |null xs = error "can't index empty list"
elementAt (x:xs) index = if (index-1) == 0 then x else elementAt xs (index-1) 



elementAtCheat :: [t] -> Int -> t
elementAtCheat xs a = (xs !! (a-1))
