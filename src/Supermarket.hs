module Supermarket where 

import Data.List

price :: Char -> Int
price 'A' = 50
price 'B' = 30


scan list = sum $ map price list 

priceList :: Char -> [Int]
priceList 'A' = [50, 50, 30]
priceList _ = []

scanList list = map (val 'A') (group (sort list))


val c list = map snd $ zip list (cycle $ priceList c)
