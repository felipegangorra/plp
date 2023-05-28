% Felipe da Silva Gangorra - 121111084 - UFCG

% processar os pedidos
processarPedidos(ValorCamisa, ContadorG, ContadorM, ContadorP, Total) :-
    read(Tamanho),
    (
        Tamanho = g ->
        NovoContadorG is ContadorG + 1,
        processarPedidos(ValorCamisa, NovoContadorG, ContadorM, ContadorP, Total)
        ;
        Tamanho = m ->
        NovoContadorM is ContadorM + 1,
        processarPedidos(ValorCamisa, ContadorG, NovoContadorM, ContadorP, Total)
        ;
        Tamanho = p ->
        NovoContadorP is ContadorP + 1,
        processarPedidos(ValorCamisa, ContadorG, ContadorM, NovoContadorP, Total)
        ;
        Tamanho = -1 ->
        calcularDesconto(ValorCamisa, ContadorG, ContadorM, ContadorP, Total)
        ;
        processarPedidos(ValorCamisa, ContadorG, ContadorM, ContadorP, Total)
    ).


% calcular o desconto e o valor total
calcularDesconto(ValorCamisa, ContadorG, ContadorM, ContadorP, Total) :-
    desconto(ContadorG, 4, DescontoG),
    desconto(ContadorM, 6, DescontoM),
    desconto(ContadorP, 8, DescontoP),
    ValorDesconto is DescontoG + DescontoM + DescontoP,
    ValorTotal is ValorCamisa * (ContadorG + ContadorM + ContadorP) * (1 - ValorDesconto/100),
    Total is round(ValorTotal * 100) / 100.


% calcular o desconto
desconto(Quantidade, Percentual, Desconto) :-
    Quantidade >= 4,
    Desconto is Percentual.
desconto(_, _, 0).


% main
main :-
    read(ValorCamisa),
    processarPedidos(ValorCamisa, 0, 0, 0, Total),
    format('~2f~n', [Total]),
    halt.
