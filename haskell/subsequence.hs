module Subsequence(
subseq, prefix) where

subseq :: Eq a => [a] -> [a] -> Bool
subseq [] y = True
subseq y [] = False
subseq x y =
            if prefix x y then 
                True
            else
                subseq x (tail y) 
            
            
prefix :: Eq a => [a] -> [a] -> Bool 
prefix [] y = True
prefix x [] = False
prefix (xh:xt) (yh:yt) 
        | xh == yh = prefix xt yt
        | otherwise = False 
                         
