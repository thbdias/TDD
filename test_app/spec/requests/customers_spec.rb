require 'rails_helper'

RSpec.describe "Customers", type: :request do
  describe "GET /customers" do
    it "works! 200 OK" do
      get customers_path
      expect(response).to have_http_status(200)      
    end

    it "index - JSON" do
      get "/customers.json"
      expect(response).to have_http_status(200)
      expect(response.body).to include_json([
        id: /\d/, # expressao regular - aceita qualquer número
        # name: "Alejandrina Kerluke",
        # email: "meu_email-1@email.com",
        name: (be_kind_of String),
        email: (be_kind_of String)
      ])     
    end

    it "show - JSON" do
      get "/customers/1.json"
      expect(response).to have_http_status(200)
      expect(response.body).to include_json(
        id: /\d/, # expressao regular - aceita qualquer número
        name: (be_kind_of String),
        email: (be_kind_of String)
      )     
    end

    it 'create - JSON' do
      member = create(:member)
      login_as(member, scope: :member)

      headers = {"ACCEPT" => "application/json"}

      customers_params = attributes_for(:customer)

      post "/customers.json", params: {customer: customers_params}, headers: headers

      # testando o retorno do post
      expect(response.body).to include_json( 
        id: /\d/, 
        name: customers_params[:name],
        email: customers_params.fetch(:email) #mesmo efeito que o :name
        # email: customers_params.fetch(:address).fetch(:street) # para json aninhado {..."address":{..."street": "rua tal"...}}
      )   
    end
    
    
    it 'update - JSON' do
      member = create(:member)
      login_as(member, scope: :member)

      headers = {"ACCEPT" => "application/json"}

      customers = Customer.first
      customers.name += " - ATUALIZADO"

      patch "/customers/#{customers.id}.json", params: {customer: customers.attributes}, headers: headers

      # testando o retorno do post
      expect(response.body).to include_json( 
        id: /\d/, 
        name: customers.name,
        email: customers.email
      )   
    end



  end
end
