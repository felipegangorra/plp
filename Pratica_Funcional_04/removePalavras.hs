-- Felipe da Silva Gangorra - 121111084 - UFCG

-- words: tranformar a string em varias strings separando por espaço
-- undwords: processo reverso da função words
-- função lambda: verifica o tamanho da string e se for aceitavel mantem na "frase"

removePalavras :: String -> String
removePalavras frase = unwords $ filter (\palavra -> length palavra > 3) $ words frase


main :: IO()
main = do
    input <- getLine
    let fraseReduzida = removePalavras input
    print fraseReduzida