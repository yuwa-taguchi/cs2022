module Main where

showInt :: Int -> String
showInt = show

readInt :: String -> Int
readInt = read

main :: IO ()
main = interact func

func :: String -> String

-- func :: String -> String
-- func input = unlines (map showInt [1 .. 3])

-- func :: String -> String
-- func input = showInt (27182 `mod` 818)

-- func :: String -> String
-- func input =showInt (314 * (159 + 265) - 358)

-- func :: String -> String
-- func input = showInt (24 * 60 * 60)

-- func input = case readInt input of
--     n -> showInt (2 * n)

-- func input = case readInt input of
--     n -> showInt (n `mod` 5)

func input = case words input of
    s:_ -> unlines [concat (replicate 3 s)]
    [] -> error "invalid input"
