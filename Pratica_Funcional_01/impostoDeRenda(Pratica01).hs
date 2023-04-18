-- Felipe da Silva Gangorra - 121111084 - UFCG


-- função para calcular o imposto 

{- estou passando como parametro apenas o extremo superior pois ele verifica
um por vez, se chegou no seguinte é pq não é nenhum valor menos que o extremo
anterior.-}

import Text.Printf

calculaImposto:: Double -> Double

calculaImposto salario
    | salario <= 1903.98 = 0.0
    | salario <= 2826.65 = 142.80 + 0.075 * (salario - 1903.99)
    | salario <= 3751.05 = 354.80 + 0.15 * (salario - 2826.66)
    | salario <= 4664.68 = 636.13 + 0.225 * (salario - 3751.06)
    | otherwise = 869.36 + 0.275 * (salario - 4664.68)
    
    
-- função para calcular salario liquido

calculaLiquido:: Double -> Double

calculaLiquido salario = salario - calculaImposto salario

main:: IO()
main = do
    input <- getLine
    let salarioDouble = read input :: Double    -- garantindo ser double
    let imposto = calculaImposto salarioDouble -- guardando valor de imposto
    let liquido = calculaLiquido salarioDouble -- guardando valor liquido
    
    printf "O valor do imposto de renda retido eh: R$ %.2f\n" imposto
    printf "O salario liquido eh: R$ %.2f" liquido