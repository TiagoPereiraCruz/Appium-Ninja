Dado("que eu quero comprar {string} do {string}") do |game, cat|
  @screen.home.choose_cat(cat)
  @screen.product.go_to(game)
end

Quando("eu adiciono este item ao carrinho") do
  @screen.product.add_to_cart
end

Então("devo ver o alerta {string}") do |mensagem_esperada|
  expect(@screen.popup.text).to eql mensagem_esperada
end