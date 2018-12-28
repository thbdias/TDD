require 'rails_helper'

RSpec.describe Customer, type: :model do
  
  #fixtures :customers #invocando arquivo customers.yml
  fixtures :all #invocando todos arquivos yml dentro de fixtures/
  
  it 'Create a Customer' do    
    customer = customers(:thiago)
    expect(customer.full_name).to eq("Sr. Thiago Dias")
  end
end
