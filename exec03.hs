-- *************************************************************
-- *      Calculate the summation of the list elements         *
-- *************************************************************

-- The func receives a list of numbers and returns the sum
sumList :: [Int] -> Int
sumList myList
    | null myList = 0
    | otherwise = head myList + sumList (tail myList)


main = do

    putStrLn "Calculando a soma dos elementos de uma lista"
    
    putStrLn "Informe uma lista de números separados por espaço:"
    input <- getLine
    
    -- The map function is applying a function (the read function) to each element of the list
    let list = map read (words input) :: [Int]

    putStrLn ("Soma: " ++ show (sumList list))
