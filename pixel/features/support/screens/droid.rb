require_relative "android/screens"

class DroidScreens
  attr_accessor :home, :login, :my_account, :product

  def initialize
    @home = Home.new
    @login = Login.new
    @my_account = MyAccount.new
    @product = Product.new
  end

  def popup
    find_element(id: "android:id/message")
  end
end
