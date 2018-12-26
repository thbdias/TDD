require 'pessoa'

describe 'Atributos' do

    before (:each) do
        puts "ANTES"
        @pessoa = Pessoa.new 
    end

    after (:each) do
        @pessoa.nome = "Sem nome!"
        puts "DEPOIS ********* #{@pessoa.inspect}"  #imprimir nome da pessoa
    end

    it 'have_attributes' do        
        @pessoa.nome = "thiago"
        @pessoa.idade = 20

        expect(@pessoa).to have_attributes(nome: starting_with("t"),idade: (be >= 20))
    end


    it 'have_attributes' do        
        @pessoa.nome = "jose"
        @pessoa.idade = 25

        expect(@pessoa).to have_attributes(nome: starting_with("j"),idade: (be >= 25))
    end
end