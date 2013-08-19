module Reader(
)where

main = do
    putStrLn "Enter a numbers, finish entering with a 0!"
    let numbers = addNumber []
    putStrLn "Sum is " ++ foldl (\x sum -> sum + x) 0 numbers
    putStrLn "Product is " ++ innerprod numbers   


addNumber :: [a] -> [a]
addNumber x = 
    if readNumber 1 == 0
    then x
    else
        x ++ addNumber x
        
        
readNumber :: Integer -> Int
readNumber x = do
    string <- getLine
    let number = (read string)::Int
    return number

innerprod :: [Integer] -> [Integer] -> Integer
innerprod [] [] = 0
innerprod [] y = 0
innerprod x [] = 0
innerprod x y = head(x) * head(y) + innerprod (tail x) (tail y) 
    
