-- Felipe da Silva Gangorra - 121111084 - UFCG

import Control.Monad

-- define o valor de cada item possivel
cardapio:: String -> Int
cardapio "cafe" = 4
cardapio "pao" = 2
cardapio "suco" = 5
cardapio "pao de queijo" = 5
cardapio "sanduiche" = 3
cardapio _ = 0 -- caso a entrada seja invalida

-- calcula o valor total dos consumidos
consumo:: [String] -> Int
consumo [] = 0 --caso base
consumo (x:xs) =
            let valor = cardapio x  -- soma valor de x a cada recursão
            in valor + consumo xs

main:: IO()
main = do
        quantidade <- readLn :: IO Int
        consumidos <- sequence (replicate quantidade getLine) --input n vezes -- sequence le varias entradas
        let total = consumo consumidos
        print total