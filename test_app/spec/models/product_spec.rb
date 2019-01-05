require 'rails_helper'

RSpec.describe Product, type: :model do
  it 'is valid with description, price and category' do
    product = create(:product)
    expect(product).to be_valid
  end
  
  context "Validates" do        
    # it { should validate_presence_of(:description).on(:create) }
    # it { should validate_presence_of(:price).on(:create) }
    # it { should validate_presence_of(:category).on(:create) }
    it { is_expected.to validate_presence_of(:description).on(:create) }
    it { is_expected.to validate_presence_of(:price).on(:create) }
    it { is_expected.to validate_presence_of(:category).on(:create) }
  end

  context "Associations" do
    it { is_expected.to belong_to(:category) } 
  end
  
  context "Instance Methods" do  
    it '#full_description' do
      product = create(:product)
      expect(product.full_description).to eq("#{product.description} - #{product.price}")
    end  
  end  
end
