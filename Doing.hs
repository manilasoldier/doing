{-# LANGUAGE OverloadedStrings #-}

module Doing (
  doing
, cut 
) where

import Data.IntSet (empty, insert, member)

doing :: Int -> [Int]
doing x
 | x == 0 = []
 | x `mod` 3 == 0 = x:(doing (div x 3))
 | x `mod` 3 == 1 = x:(doing (x-10))
 | otherwise = x:(doing (x^2-1))

cut :: [Int] -> [Int]
cut (x:xs) = cut' (x:xs) [] empty
 where
  cut' [] zs iSet = zs
  cut' (x:xs) zs iSet 
   | x `member` iSet = zs
   | otherwise = cut' xs (x:zs) (insert x iSet) 

