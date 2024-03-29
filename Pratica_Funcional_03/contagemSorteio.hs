-- Felipe da Silva Gangorra - 121111084 - UFCG

-- Maria é professora de matemática e gostaria de saber a quantidade de vezes que cada número é sorteado em uma lista de números aleatórios gerados por um programa de loteria.
-- Ela deseja que você crie um programa em Haskell que recebe uma lista de números inteiros aleatórios e retorna a quantidade de vezes que cada número foi sorteado.

frequencia :: [Int] -> [(Int, Int)] --gera tuplas com os elementos repetidos
frequencia [] = [] --caso base
frequencia (x:xs) = (x, contagem x (x:xs)) : frequencia (filter (/=x) xs)  --chamando recursivo xs
    where contagem x xs = length (filter (==x) xs)  --definição de contagem e soma de x

printFreq :: [(Int, Int)] -> IO ()
printFreq [] = putStrLn "nenhum numero foi sorteado"
printFreq xs = mapM_ printTuple xs      --printa formatado o elemento e a quantidade de vezes dele (na tupla)
    where printTuple (x, freq) = putStrLn (show x ++ " foi sorteado " ++ show freq ++ " vez(es)")
    

main :: IO ()
main = do
    input <- getLine
    let list = read input :: [Int]
    let freq = frequencia list
    printFreq freq
    

