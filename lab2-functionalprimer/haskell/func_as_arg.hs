-- Define inpFunc to generate a range of numbers
inpFunc :: Int -> Int -> [Int]
inpFunc a b = [a..b]

-- Define applicatorFunc using guards
applicatorFunc :: [Int] -> Char -> Double
applicatorFunc nums s
    | s == 's'  = fromIntegral (sum nums)  -- Compute sum
    | otherwise = fromIntegral (sum nums) / fromIntegral (length nums)  -- Compute average

main :: IO ()
main = do
    putStrLn "Enter the starting number (a):"
    aStr <- getLine
    putStrLn "Enter the ending number (b):"
    bStr <- getLine
    putStrLn "Enter 's' for sum or any other character for average:"
    op <- getLine
    let a = read aStr :: Int
        b = read bStr :: Int
        numbers = inpFunc a b
        result = applicatorFunc numbers (head op)  -- Take the first character from input
    putStrLn ("Result = " ++ show result)
