#features/support/pages.rb

module Pages

  class Page
    attr_reader :browser

    def initialize browser
      @browser = browser
    end
  end

  def classify s
    s.to_s.split('_').map(&:capitalize).join
  end

  def confirm page
     (raise "I think I might be lost!") if (@browser.title != page.expected_title)
     (raise "URL error!") if !(@browser.current_url.include? page.url)
  end 

  def visit page_name
    @page = Page.new @browser
    page_class = classify page_name
    @page.extend Object.const_get page_class
    @browser.navigate.to @page.url
    confirm @page
  end

  def on page_name
    @page = Page.new @browser
    page_class = classify page_name
    @page.extend Object.const_get page_class
    confirm @page
  end
end