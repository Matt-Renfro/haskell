-- Pack consecutive duplicates of list elements into sublists
module Problem9(pack, pack', mySpan) where

pack :: Eq a => [a] -> [[a]]
pack [] = []
pack [x] = [[x]]
pack xs = let (f,s) = mySpan (==(head xs)) xs
          in  [f] ++ pack s


pack' :: Eq a => [a] -> [[a]]
pack' [] = []
pack' (x:xs) = let (f,s) = mySpan(==x) xs
               in (x:f) : pack' s

mySpan :: (a->Bool) -> [a] -> ([a], [a])
mySpan predicate lst = let f (xs, []) = (xs,[])
                           f ([], (x:xs)) = f ([x], xs)
                           f (xs, (y:ys)) = if predicate y 
                                            then f ((xs++ [y]),ys) 
                                            else (xs, (y:ys))
                       in f ([], lst)

