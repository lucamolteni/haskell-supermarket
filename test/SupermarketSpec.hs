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

  it "should handle multiple values" $ do
    scan "AA" `shouldBe` 100

  it "three A's are cheaper than two" $ do
    scan "AAA" `shouldBe` 130
  
