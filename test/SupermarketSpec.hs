module SupermarketSpec (main, spec) where

import Supermarket
import Test.Hspec

main :: IO ()
main = hspec spec

spec :: Spec
spec = do
 describe "Supermarket" $ do
  it "should calculate a single cart with a single Item" $ do
    scan "A" `shouldBe` 50 

  it "should handle empty string" $ do
    scan "" `shouldBe` 0

  it "should handle different output" $ do
    scan "AB" `shouldBe` 80

  it "should handle four different item type" $ do 
    scan "CDBA" `shouldBe` 115

  it "should handle multiple values" $ do
    scan "AA" `shouldBe` 100

  it "three As are cheaper than two" $ do
    scan "AAA" `shouldBe` 130

  it "six As should be as cheap as buy two times three A" $ do 
    scan "AAAAAA" `shouldBe` 260

  it "this is a really complicated string by specification" $ do 
    scan "DABABA" `shouldBe` 190
  
