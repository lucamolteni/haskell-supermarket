module Supermarket where 

import Data.List

priceList :: Char -> [Int]
priceList 'A' = [50, 50, 30]
priceList 'B' = [30, 15]
priceList 'C' = [20]
priceList 'D' = [15]
priceList _ = []

scan :: String -> Int
scan list = sum . concat $ map checkPrices groupedList 
    where groupedList = (group . sort) list
          checkPrices l = price (head l) l

price :: Char -> [Char] -> [Int]
price c itemList = map snd $ zip itemList (cycledPrices c) 
    where cycledPrices = cycle . priceList 
