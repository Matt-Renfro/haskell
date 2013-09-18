--Run-length encoding of a list. Use the result of problem P09 to 
--implement the so-called run-length encoding data compression method.
--Consecutive duplicates of elements are encoded as lists 
--(N E) where N is the number of duplicates of the element E. 
module Problem10 where

import Problem9

encode :: Eq a => [a] -> [(Int, a)]
--encode (x:_) = [(1::Int, x)]
encode [] = []
encode xs = map enc $ pack xs
    where enc ys = (length ys, head ys)
