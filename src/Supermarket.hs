module Supermarket where 

import Data.List

priceList :: Char -> [Int]
priceList 'B' = [30]
priceList 'A' = [50, 50, 30]
priceList _ = []

scan :: String -> Int
scan list = sum $ concat $ map (\list -> val (head list) list) (group (sort list))

val :: Char -> [Char] -> [Int]
val c list = map snd $ zip list (cycle $ priceList c)
