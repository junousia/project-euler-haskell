module Main where
import Prelude
import Text.Printf

multiples :: [Int] -> [Int]
multiples [] = []
multiples (x:xs)
	| (mod x 5) /= 0 && (mod x 3) /= 0 = [] ++ multiples xs
	| otherwise = [x] ++ multiples xs

main :: IO ()
main = do
	printf "Euler Project problem 1 - Multiples of 3 and 5:\n"
	printf "%d\n" (sum (multiples [1..999])::Int)
