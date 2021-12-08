import Data.List
import System.IO

main = do
    putStrLn "Whats may I call you sir ?"
    name <- getLine
    putStrLn ("Hello " ++ name)