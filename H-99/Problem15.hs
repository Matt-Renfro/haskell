--Replicate the elemtns of a list a given number of times
module Problem15 where

repli:: (Eq b, Num b, Ord b) => [a] -> b -> [a]
repli _ t
    | t < 0 = error "times < 0"
repli [] _ = []
repli (x:xs) times = let rep _ 0 = []
                         rep y times' =  y : rep y (times'-1)
                     in (rep x times) ++ repli xs times
