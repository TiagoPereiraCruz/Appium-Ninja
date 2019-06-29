class Home
  def go_account
    find_element(id: "qaninja.com.pixel:id/accountButt").click
  end

  def choose_cat(cat)
    find_elements(id: "qaninja.com.pixel:id/cCatNameTxt").text(cat).click
  end
end

class Login
  def with(email, pass)
    find_element(id: "qaninja.com.pixel:id/usernameTxt").send_keys(email)
    find_element(id: "qaninja.com.pixel:id/passwordTxt").send_keys(pass)
    find_element(id: "qaninja.com.pixel:id/loginButt").click
  end

  def popup
    find_element(id: "android:id/message")
  end
end

class MyAccount
  def view
    find_element(id: "qaninja.com.pixel:id/account")
  end
end

class Product
  def go_to(product)
    find_elements(id: "qaninja.com.pixel:id/cpProdNameTxt").text(product).click
  end

  def add_to_cart
    find_element(id: "qaninja.com.pixel:id/pdAddToCartButt").click
  end
end
