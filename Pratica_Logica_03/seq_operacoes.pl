% Felipe da Silva Gangorra - 121111084 - UFCG

% Dado uma lista de números e um número inicial X, o valor inicial deve ser operado com as 4 operações básicas até o fim da lista ser atingido. 
% Por exemplo, dada a lista [2,3,5,1,3] e o valor inicial 5, o resultado seria 23 que corresponde a seguinte sequência de operações


% resultado/4 é o predicado principal que realiza as operações na lista de números
% e retorna o resultado final.
resultado([], _, Valor, Valor).

% Caso base: a lista está vazia, o resultado final é igual ao valor atual.
resultado([X | Resto], 0, Valor, Resultado) :-
    NovoValor is Valor + X,
    resultado(Resto, 1, NovoValor, Resultado).

% Operação de adição: soma o valor atual com o próximo número da lista.
resultado([X | Resto], 1, Valor, Resultado) :-
    NovoValor is Valor - X,
    resultado(Resto, 2, NovoValor, Resultado).

% Operação de subtração: subtrai o valor atual pelo próximo número da lista.
resultado([X | Resto], 2, Valor, Resultado) :-
    NovoValor is Valor * X,
    resultado(Resto, 3, NovoValor, Resultado).

% Operação de multiplicação: multiplica o valor atual pelo próximo número da lista.
resultado([X | Resto], 3, Valor, Resultado) :-
    X =\= 0, % Verifica se o próximo número não é zero para evitar divisão por zero.
    NovoValor is Valor / X,
    resultado(Resto, 0, NovoValor, Resultado).

% Se o próximo número for zero, a divisão não é realizada e a próxima operação é feita.
resultado([0 | Resto], 3, Valor, Resultado) :-
    resultado(Resto, 0, Valor, Resultado).

main :-
    read(Lista),
    read(ValorInicial),
    resultado(Lista, 0, ValorInicial, Resultado),
    write(Resultado),
    halt.
