-- Define inpFunc to take any range of numbers
inpFunc :: Int -> Int -> [Int]
inpFunc a b = [a..b] 

-- Define applicatorFunc to compute sum or average
applicatorFunc :: [Int] -> Char -> Double
applicatorFunc nums s = 
    if s == 's' 
        then fromIntegral (sum nums)  -- Sum as Double
        else fromIntegral (sum nums) / fromIntegral (length nums)  -- Average

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
        result = applicatorFunc numbers (head op)  -- Taking only the first char from input
    putStrLn ("Result = " ++ show result)
