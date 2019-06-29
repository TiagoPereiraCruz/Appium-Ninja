Before do
  driver.start_driver
  driver.manage.timeouts.implicit_wait = 10

  device_type = "android"
  @screen = DroidScreens.new if device_type.eql?("android")
  @screen = IOSScreen.new if device_type.eql?("ios")
end

Before("@login") do
  @screen.home.go_account
  @screen.login.with("tiagopereira1988@hotmail.com", "t1p9d8c8")
end

After do
  screenshot = driver.screenshot_as(:base64)
  embed(screenshot, "image/png", "Screenshot")

  driver.quit_driver
end
