FactoryBot.define do
  factory :order do
    sequence (:description) { |n| "Pedido numero - #{n}" }
    
    #as duas linhas abaixo fazem a msm coisa
    association :customer, factory: :customer 
    #customer 

  end
end
