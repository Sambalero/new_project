#features/support/form_page.rb

module ResponsePage 

  def initialize browser
    @browser = browser
  end

#properties
  def url
    url = "http://practicetestpage.kevinswallow.com/response.html"
  end

  def expected_title
    expected_title = "Form Received"
  end

end