Before do
  driver.start_driver
  driver.manage.timeouts.implicit_wait = 10

  device_type = "Android"

  if (device_type == "Android")

  end

  if (device_type == "IoS")

  end
end


After do
  driver.quit_driver
end