require 'rails_helper'

RSpec.describe Order, type: :model do
  it 'belongs_to' do
    # customer = create(:customer)
    # order = create(:order, customer: customer)        
    order = create(:order)    
    expect(order.customer).to be_kind_of(Customer)
  end

  it 'Tem 3 pedidos - create_list' do
    #orders = create_list(:order, 3) #cria 3 instâncias
    orders = create_list(:order, 3, description: "testesssss") #sobrescreve
    # puts orders.inspect
    expect(orders.count).to eq(3)
  end

  it 'has_many' do
    # customer = create(:customer, :with_orders, qtt_orders: 5)    
    # puts customer.inspect
    # puts customer.orders.inspect
    customer = create(:customer_with_orders)
    expect(customer.orders.count).to eq(3)
  end
end
