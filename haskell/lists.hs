module Lists (
innerprod, noOfElem, orderIt) where

import Data.List

innerprod :: [Integer] -> [Integer] -> Integer
innerprod x y = sumProd 0 x y

sumProd :: Integer -> [Integer] -> [Integer] -> Integer
sumProd x [] [] = x
sumProd x [] y = x
sumProd x y [] = x
sumProd x y z = sumProd (x + (head(y) * head(z))) (tail y) (tail z) 


noOfElem :: [a] -> Integer
noOfElem x = countElem 0 x

countElem :: Integer -> [a] -> Integer
countElem x [] = x
countElem x y = countElem (x+1) (tail y)


orderIt :: Ord a => [a] -> [a]
orderIt [] = []
orderIt x = [minimum x] ++ orderIt(delete (minimum x) x)

