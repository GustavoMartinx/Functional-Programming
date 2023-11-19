-- *************************************************************
-- *                 Concatenate two lists                     *
-- *************************************************************

-- The func receives two lists and returns its concatenation
concatenateLists :: [Int] -> [Int] -> [Int]
concatenateLists [] secondList = secondList
concatenateLists firstList [] = firstList
concatenateLists (x:xs) secondList = x : concatenateLists xs secondList


main = do

    putStrLn "Concatenando duas listas"
    
    putStrLn "Informe a primeira lista com elementos separados por espaço:"
    input1 <- getLine

    putStrLn "Informe a segunda lista com elementos separados por espaço:"
    input2 <- getLine
    
    -- The map function is applying a function (the read function) to each element of the list
    let list1 = map read (words input1) :: [Int]
    let list2 = map read (words input2) :: [Int]

    putStrLn ("Concatenação: " ++ show (concatenateLists list1 list2))
