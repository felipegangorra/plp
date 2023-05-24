% Felipe da Silva Gangorra - 121111084 - UFCG

% para executar chame o main. e depois passe o valor.

main :-     %read pega o valor, double é a regra que faz a operação e write retorna o resultado no terminal (em ordem)
    read(X), double(X, Resultado), write(Resultado).
    

double(X, Resultado) :-
    Resultado is 2 * X.