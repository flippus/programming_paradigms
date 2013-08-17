
module Unknown (
unknown
) where

unknown :: [a] -> [[a]]
unknown [] = [[]]
unknown (x:xs) = (unknown xs) ++ (map (x:) (unknown xs))

-- the module creates a new list with sublists.
-- the first list is empty and then the given parameters will be combined

-- mathematics: computes the power set of the given list
