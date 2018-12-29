require 'rails_helper'

RSpec.describe Customer, type: :model do
  
  #fixtures :customers #invocando arquivo customers.yml
  #fixtures :all #invocando todos arquivos yml dentro de fixtures/
  
  it '#full_name - Sobrescrevendo Atributo' do    
    customer = create(:customer, name: "Thiago Dias") #usando factory bot
    expect(customer.full_name).to eq("Sr. Thiago Dias")    
  end
  
  it 'Herança' do    
    customer = create(:customer_vip) 
    expect(customer.days_to_pay).to eq(30)    
  end
  
  it '#full_name' do    
    # customer = create(:customer) #usando factory bot
    customer = create(:user) #usando aliases
    expect(customer.full_name).to start_with("Sr. ")    
  end

  it 'usando attributes_for' do
    attrs = attributes_for(:customer)
    # attrs1 = attributes_for(:customer_vip)
    # attrs2 = attributes_for(:customer_default)
    # puts attrs
    # puts attrs1
    # puts attrs2
    customer = Customer.create(attrs)
    expect(customer.full_name).to start_with("Sr. ")
  end

  it { expect{create(:customer)}.to change{Customer.all.size}.by(1) }
end
