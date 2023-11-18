-- Testing if a value is a member of a list

searchElem :: Eq a => a -> [a] -> Bool
searchElem x lista
    | null lista = False
    | head lista == x = True
    | otherwise = searchElem x (tail lista)


main = do
    
    let number = 42
    let myList = [1, 2, 3, 4, 5, 42]

    print $ searchElem number myList