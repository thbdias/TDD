require 'rails_helper'
require_relative '../support/new_customer_form'

RSpec.feature "Customers", type: :feature do
  it 'Visit index page' do
    visit(customers_path)
    save_and_open_page
    # print page.html
    expect(page).to have_current_path(customers_path)
  end

  it 'Creates a Customer - Page Object Pattern' do
    new_customer_form = NewCustomerForm.new 

    new_customer_form.login.visit_page.fill_in_with(
      name: Faker::Name.name,
      email:Faker::Internet.email,
      address: Faker::Address.street_address
    ).submit

    expect(page).to have_content('Customer was successfully created.')
  end

  it 'Creates a Customer' do
    #fazendo login
    member = create(:member)
    login_as(member, :scope => :member)

    #entrando na página
    visit(new_customer_path)

    #preenchendo campos
    fill_in('Name', with: Faker::Name.name)
    fill_in('Email', with: Faker::Internet.email)
    fill_in('Address', with: Faker::Address.street_address)

    #clicar no botao
    click_button('Create Customer')

    expect(page).to have_content('Customer was successfully created.')
  end
end
