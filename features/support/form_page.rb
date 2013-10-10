#features/support/form_page.rb

module FormPage 

  # def initialize browser
  #   @browser = browser
  # end

#properties
  def url
    url = "http://practicetestpage.kevinswallow.com/simple_form.html"
  end

  def expected_title
    expected_title = "Simple Test Form"
  end

#methods
  def find first_name
    @browser.find_element(:id => first_name)
  end

  def fill_in_first_name first_name
    @browser.find_element(:id => "first_name").send_keys first_name
  end

  def fill_in_last_name last_name
    @browser.find_element(:name => "last_name").send_keys last_name
  end

  def submit
   @browser.find_element(:tag_name => "button").click
  end

end