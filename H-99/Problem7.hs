-- Flatten a nested list structure
module Problem7 where

data NestedList a = Elem a | List [NestedList a]

flatten :: NestedList a -> [a]
flatten (Elem a) = [a]
flatten (List a) = flattenSubList a

flattenSubList :: [NestedList a] -> [a]
flattenSubList ((Elem x):xs) = x:(flattenSubList xs)
flattenSubList (x:xs) = flatten x ++ flattenSubList xs
flattenSubList [] = []

