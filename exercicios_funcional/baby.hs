-- função que retorna o dobro do valor passado (int ou double)

doubleMe x = x + x

-- função que retorna o dobro de dois valores

doubleUs x y = x*2 + y*2

-- refatorando o doubleUs utilizando o doubleMe

doubleUsTwo x y = doubleMe x + doubleMe y

-- função que dobra só se for menor que 100

doubleSmallNumber x = if x > 100
                         then x
                         else x*2