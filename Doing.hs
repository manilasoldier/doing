{-# LANGUAGE OverloadedStrings #-}

module Doing (
  doing 
) where

doing :: Int -> [Int]
doing x
 | x == 0 = []
 | x `mod` 3 == 0 = x:(doing (div x 3))
 | x `mod` 3 == 1 = x:(doing (x-10))
 | otherwise = x:(doing (x^2-1))
