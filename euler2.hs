module Main where
import Prelude
import Text.Printf

fib = 1 : 1 : [ a+b | (a,b) <- zip fib (tail fib) ]
evenfib = filter (\x -> mod x 2 == 0) fib

main :: IO ()
main = do
	printf "Euler Project problem 2 - Even Fibonacci numbers:\n"
	print (takeWhile (<4000000) evenfib)
