module Main where
import Prelude
import Text.Printf

multiples :: [Int] -> [Int]
multiples [] = []
multiples (x:xs)
	| (mod x 5) /= 0 && (mod x 3) /= 0 = [] ++ multiples xs
	| otherwise = [x] ++ multiples xs

main = printf "Sum of numbers divisible by 3 or 5 in the range of [1..1000]:\n%d" (sum (multiples [1..1000])::Int)

