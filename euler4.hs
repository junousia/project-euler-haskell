module Main where
import Prelude
import Text.Printf
	  
digits 0 = []
digits x = digits (x `div` 10) ++ [x `mod` 10]

isPalindrome x = digits x == reverse (digits x)

palindromes :: [Int] -> [Int]
palindromes (x:xs)
    | xs == [] = []
    | isPalindrome x = x : palindromes xs
	| otherwise = palindromes xs

cartProd xs ys = [x * y | x <- xs, y <- ys]

largestPalindrome :: [Int] -> [Int] -> Int
largestPalindrome x y = maximum (palindromes (cartProd x y))

main :: IO ()
main = do
	printf "Euler Project problem 4:\n"
	print (largestPalindrome [100..999] [100..999])