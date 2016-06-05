-- |

module Main where

import System.Environment (getArgs)

fib :: [Integer]
fib = 0 : 1 : zipWith (+) fib (tail fib)

main :: IO ()
main = do
  n <- head <$> getArgs
  print $ take (read n) $ fib
