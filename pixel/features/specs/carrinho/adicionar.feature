#language:pt

Funcionalidade: Adicionar item ao carrinho
    Para que eu possa comprar jogos clássicos na lojinha
    Sendo um usuário cadastrado
    Posso adicionar itens no meu carrinho

    @add
    Cenario: Adicionar jogo

        Dado que eu quero comprar "F-Zero" do "Super Nintendo"
        Quando eu adiciono este item ao carrinho
        Então devo ver o alerta "Você adicionou F-Zero ao seu carrinho!"