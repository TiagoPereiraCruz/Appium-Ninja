#language:pt

Funcionalidade: Adicionar item ao carrinho
  Para que eu possa comprar jogos clássicos na lojinha
  Sendo um usuário cadastrado
  Posso adicionar itens no meu carrinho

  @add_game @login @clean_cart
  Cenario: Adicionar jogo

    Dado que eu quero comprar "F-Zero" do "Super Nintendo"
    Quando eu adiciono este item ao carrinho
    Então devo ver o alerta "Você adicionou F-Zero ao seu carrinho!"

    @wip @clean_cart
    Cenario: Usuário não logado adiciona produto

      Dado que eu quero comprar "Golden Axe" do "Mega Drive"
      Quando eu adiciono este item ao carrinho
      Mas preciso fazer login para adicionar o produto
      Então devo ver o alerta "Você adicionou Golden Axe ao seu carrinho!"

      Cenario: Finalizar

        Dado que eu tenho o produto "Golden Axe" do "Mega Drive"
        Quando eu finalizo a comprar
        Então deve gerar um novo item em minhas compras
