import System.Environment (getArgs)

smallestDivisor :: [Int] -> Int -> Int
smallestDivisor p n = head $ filter (\p -> n `mod` p == 0) p

factors :: [Int] -> Int -> [Int]
factors _ 1 = []
factors p x = d : factors p x'
    where
        d  = smallestDivisor p x
        x' = x `div` d

main :: IO ()
main = do
    args <- getArgs
    primes <- getContents
    let primes' = map read (lines primes) :: [Int]
    print $ factors primes' (read $ head args)