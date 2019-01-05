require 'rails_helper'

RSpec.describe CustomersController, type: :controller do
    it 'responds successfully' do
        get :index 
        # puts response.inspect
        #response contém a resposta que o servidor deu 
        #relativo a requisição get a action index
        expect(response).to be_success 
        #be_success é um atalho ao comando have_http_status "200"
    end
    
    it 'responds a 200 response' do
        get :index         
        expect(response).to have_http_status(200)    
    end    
end
