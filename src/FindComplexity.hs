module FindComplexity where
import Data.List


calculateComplexity :: String -> IO Integer
calculateComplexity fileName = do
  let sum = 0
  content <- readFile fileName
  let numbers = lines content
  for_ numbers $ \m -> do
    x <- read m :: Integer
    sum <- sum + x
    return sum 
