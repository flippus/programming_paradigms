module Operators (
evaluate
) where

data Tree = Operand Int | Add (Tree) (Tree) deriving (Show)


evaluate :: Tree -> Int
evaluate (Operand a) = a
evaluate (Add left right) = (evaluate left) + (evaluate right)

