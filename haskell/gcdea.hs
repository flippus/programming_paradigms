module Gcdea(
gcdea
) where

gcdea :: Integer -> Integer -> Integer
gcdea x y
        | x == y = x
        | x > y = gcdea (x-y) y
        | y > x = gcdea (y-x) x

