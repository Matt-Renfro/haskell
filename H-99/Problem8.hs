-- Eliminate consecutive duplicates of list elements
module Problem8 where

compress :: Eq a => [a] -> [a]
compress [] = []
compress (x:xs) = foldl (cmp) [x] xs
    where cmp acc val = if (last acc) == val then acc else acc ++ [val]
