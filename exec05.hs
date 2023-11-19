-- *************************************************************
-- *                     Reverse a list                        *
-- *************************************************************

-- The func receives a list of numbers and return it reversed
reverseList :: [Int] -> [Int]
reverseList myList
    | null myList = []
    | otherwise = reverseList (tail myList) ++ [head myList]


main = do

    putStrLn "Invertendo uma lista"
    
    putStrLn "Informe uma lista de números separados por espaço:"
    input <- getLine
    
    -- The map function is applying a function (the read function) to each element of the list
    let list = map read (words input) :: [Int]

    putStrLn ("Invertida: " ++ show (reverseList list))
