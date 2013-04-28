module Main where
import Prelude
import Text.Printf
import Data.Numbers.Primes
	  
largestfactor a = maximum (filter (\x -> mod a x == 0) (takeWhile (\x -> x*x < a) primes))

main :: IO ()
main = do
	printf "Euler Project problem 3:\n"
	print (largestfactor 600851475143)
