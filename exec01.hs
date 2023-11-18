-- *************************************************************
-- *        Verifying if an element belongs to a list          *
-- *************************************************************

-- The func receives an element to search and a list and returns a boolean
-- 'Eq' means that the 'a' object should be able to be equally compared
searchElem :: Eq a => a -> [a] -> Bool
searchElem x myList
    | null myList = False                       -- verifying if the list is empty
    | head myList == x = True                   -- verifying if the element is the first element
    | otherwise = searchElem x (tail myList)    -- calling recursively with the element and the tail list (the list without the first element)


main = do

    putStrLn "Verificando se um elemento pertence a uma lista"
    
    putStrLn "Informe uma lista de números separados por espaço:"
    input <- getLine
    
    -- The map function is applying a function (the read function) to each element of the list
    let list = map read (words input) :: [Int]

    putStrLn "Informe o número a ser pesquisado na lista:"
    input2 <- getLine
    
    -- The read function is converting a string to an integer
    let number = read input2 :: Int
    
    putStrLn ("O número" ++ show number ++ " está na lista? " ++ show (searchElem number list))