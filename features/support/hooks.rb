Before do
  @b = Selenium::WebDriver.for :firefox
end

After do
  @b.quit
end