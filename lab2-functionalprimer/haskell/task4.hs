ask :: String -> IO ()
ask prompt = do
    putStrLn prompt
    line <- getLine
    if line == "quit"
        then putStrLn "quitting..."
    else if line == ""
        then ask (prompt ++ "!")  -- Add "!" to the prompt on each empty input
    else do
        putStrLn ("you said: " ++ reverse line)
        ask prompt  -- Keep the same prompt for normal input

main = do
    let prompt = "please say something"
    ask prompt
