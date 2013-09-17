-- Palindrome 
module Problem6 where

isPalindrome:: Eq a => [a] -> Bool
isPalindrome xs = let eqlist = zipWith (==) xs $ reverse xs
                  in foldl (&&) True eqlist
