-- Felipe Gangorra - 121111084 - UFCG

-- Programa que retorna o dobro de um numero inteiro (também funciona com flutuante)

doubleInt:: Int -> Int

doubleInt x = x + x

-- Main para Teste

main:: IO()
main = do
    input <- getLine
    let num = doubleInt( read input)
    print num