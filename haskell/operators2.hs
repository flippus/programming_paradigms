module Operators2(
evaluate) where

data Tree a = Operand a | Op (a -> a -> a) (Tree a) (Tree a)

evaluate :: Tree a -> a
evaluate (Operand a) = a
evaluate (Op f right left) = (f) (evaluate right) (evaluate left)
