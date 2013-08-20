module Reader(
)where

main = do
    putStrLn "Enter a numbers, finish entering with a 0!"
    let numbers = addNumber []
    putStrLn ("Sum is " ++ show(foldl (\x sum -> sum + x) 0 numbers))
    putStrLn ("Product is " ++ show(prod numbers)) 


addNumber :: Num a => [a] -> [a]
addNumber x = 
    if readNumber 1 < 1
    then x
    else
        x ++ addNumber x
        
        
readNumber :: IO Int -> IO Int
readNumber x = do
    string <- getLine
    let number = (read string)::Int
    return number

prod :: [Integer]-> Integer
prod [] = 1
prod x = head(x) * prod (tail x)
    
