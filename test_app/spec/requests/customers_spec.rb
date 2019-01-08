require 'rails_helper'

RSpec.describe "Customers", type: :request do
  describe "GET /customers" do
    it "works! 200 OK" do
      get customers_path
      expect(response).to have_http_status(200)      
    end

    it "index - JSON 200 OK" do
      get "/customers.json"
      expect(response).to have_http_status(200)
      expect(response.body).to include_json([
        id: /\d/, # expressao regular - aceita qualquer número
        # name: "Alejandrina Kerluke",
        # email: "meu_email-1@email.com",
        name: (be_kind_of String),
        email: (be_kind_of String),
      ])     
    end

    it "show - JSON 200 OK" do
      get "/customers/1.json"
      expect(response).to have_http_status(200)
      expect(response.body).to include_json(
        id: /\d/, # expressao regular - aceita qualquer número
        name: (be_kind_of String),
        email: (be_kind_of String),
      )     
    end
  end
end
