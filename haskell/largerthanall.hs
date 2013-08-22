module LargherThanall where

largerthanall :: Ord a => [a] -> a -> Bool 
largerthanall x [] = True
largerthanall x y
            | x <= (head y) = False
            | otherwise = largerthanall x (tail y)
