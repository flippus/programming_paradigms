module Lists (
innerprod, noOfElem, orderIt, insertPos) where

import Data.List

innerprod :: [Integer] -> [Integer] -> Integer
innerprod x y = sumProd 0 x y

sumProd :: Integer -> [Integer] -> [Integer] -> Integer
sumProd x [] [] = x
sumProd x [] y = x
sumProd x y [] = x
sumProd x y z = sumProd (x + (head(y) * head(z))) (tail y) (tail z) 


noOfElem :: [a] -> Integer
noOfElem x = foldl (\sum y -> sum + 1) 0 x


orderIt :: Ord a => [a] -> [a]
orderIt [] = []
orderIt x = [minimum x] ++ orderIt(delete (minimum x) x)


insertPos :: a -> [a] -> [[a]]
insertPos x [] = [[x]]
insertPos x y = createList x [] y

createList :: a -> [a] -> [a] -> [[a]]
createList x y [] = [y++[x]]
createList x y z = [(y++[x]++z)] ++ createList x (y++[head z]) (tail z)
