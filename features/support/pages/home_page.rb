class HomePage
  include PageObject

  page_url 'http://localhost:3000'

  def select_first_puppy()
    button_element(:value => 'View Details', :index => 0).click
  end
end
