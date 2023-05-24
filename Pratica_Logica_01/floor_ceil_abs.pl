% Felipe da Silva Gangorra - 121111084 -  UFCG

% floor arredonda para baixo
% ceil arredonda para cima
% abs valor absoluto

main :-
    read(X), floor(X, FloorOut), ceil(X, CeilOut), abs(X, AbsOut),      % declarando as regras
    format("Floor de ~w = ~w~n", [X, FloorOut]),    % formatando as saidas
    format("Ceil de ~w = ~w~n", [X, CeilOut]),
    format("Abs de ~w = ~w~n", [X, AbsOut]),
    halt.   % para finalizar e não retorna "true"
    

floor(X, FloorOut) :- 
    FloorOut is floor(X).

ceil(X, CeilOut) :- 
    CeilOut is ceil(X).
    
abs(X, AbsOut) :-
    AbsOut is abs(X).