class NewCustomerForm

  include Capybara::DSL  #Capybara
  include FactoryBot::Syntax::Methods # FactoryBot
  include Warden::Test::Helpers #Devise
  include Rails.application.routes.url_helpers # routes

  def login
    member = create(:member)
    login_as(member, :scope => :member)  
    self   # permite encadeamento de métodos
  end

  def visit_page
    visit(new_customer_path)  
    self # permite encadeamento de métodos
  end
  
  def fill_in_with (params = {})
    fill_in('Name', with: params.fetch(:name, Faker::Name.name))
    fill_in('Email', with: params.fetch(:email, Faker::Internet.email))
    fill_in('Address', with: params.fetch(:address, Faker::Address.street_address))
    self
  end
  
  def submit
    click_button('Create Customer')  
  end
end