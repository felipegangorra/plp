% Felipe da Silva Gangorra - 121111084 - UFCG

% Escreva um programa que recebe uma matriz de inteiros e indica qual a coordenada do maior elemento presente nela.

% Regra que encontra a posição do maior elemento em uma matriz
maiorIndex(Matriz, Posicao) :-
    % Transforma a matriz em uma lista unidimensional
    flatten(Matriz, Lista),
    % Encontra o maior elemento da lista
    max_list(Lista, Max),
    % Encontra a posição do maior elemento na matriz
    nth1(PosLinha, Matriz, Linha), % Encontra a linha na posição PosLinha
    nth1(PosColuna, Linha, Max), % Encontra a coluna na posição PosColuna
    % Define a posição como uma lista [PosLinha, PosColuna]
    Posicao = [PosLinha, PosColuna].


main :-
    read(Matriz),
    maiorIndex(Matriz, Posicao),
    write(Posicao), halt.