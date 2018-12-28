require 'rails_helper'

RSpec.describe Customer, type: :model do
  
  #fixtures :customers #invocando arquivo customers.yml
  #fixtures :all #invocando todos arquivos yml dentro de fixtures/
  
  it '#full_name - Sobrescrevendo Atributo' do    
    customer = create(:customer, name: "Thiago Dias") #usando factory bot
    expect(customer.full_name).to eq("Sr. Thiago Dias")    
  end
  
  it '#full_name' do    
    # customer = create(:customer) #usando factory bot
    customer = create(:user) #usando aliases
    expect(customer.full_name).to start_with("Sr. ")    
  end

  it { expect{create(:customer)}.to change{Customer.all.size}.by(1) }
end
