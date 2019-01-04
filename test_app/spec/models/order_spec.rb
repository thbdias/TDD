require 'rails_helper'

RSpec.describe Order, type: :model do
  it 'Tem 1 pedido' do
    # customer = create(:customer)
    # order = create(:order, customer: customer)        
    order = create(:order)    
    expect(order.customer).to be_kind_of(Customer)
  end

  it 'Tem 3 pedidos' do
    #orders = create_list(:order, 3) #cria 3 instâncias
    orders = create_list(:order, 3, description: "testesssss") #sobrescreve
    puts orders.inspect
    expect(orders.count).to eq(3)
  end
end
