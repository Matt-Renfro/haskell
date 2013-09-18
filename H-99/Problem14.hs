-- Duplicate the elements of a list
module Problem14 where

dupli :: [a] -> [a]
dupli (x:xs) = x : x : dupli xs
dupli [] = []
