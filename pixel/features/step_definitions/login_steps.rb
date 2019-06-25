Dado("que acesso a tela de login") do
  @screen.home.go_account
end

Quando("eu faço login com {string} e {string}") do |email, pass|
  @screen.login_with(email, pass)
end

Então("posso ver a tela minha conta") do
  find_element(id: "qaninja.com.pixel:id/accountButt").click
  conta = find_element(id: "qaninja.com.pixel:id/account")
  expect(conta.displayed?).to be true
end

Então("devo ver {string} como popup") do |string|
  popup = find_element(id: "android:id/message")
  expect(popup.displayed?).to be true
end

Quando("logo sem sucesso {int} vezes") do |tentativas|
  tentativas.times do
    steps %{
            Quando eu faço login com "tony@stark.com" e "123pass"
          }
    popup = find_element(id: "android:id/message")
    expect(popup.displayed?).to be true
    back
  end
end

Quando("faço login na última tentativa") do
  steps %{
    Quando eu faço login com "tony@stark.com" e "pass123"
  }
end
