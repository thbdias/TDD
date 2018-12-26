require 'pessoa'

describe 'Atributos' do

    # before (:each) do        
    #     @pessoa = Pessoa.new 
    # end    

    let(:pessoa) { Pessoa.new } #:pessoa é uma variável/ou poderia ser uma função que retorna Pessoa.new

    it 'have_attributes' do        
        pessoa.nome = "thiago"
        pessoa.idade = 20

        expect(pessoa).to have_attributes(nome: starting_with("t"),idade: (be >= 20))
    end


    it 'have_attributes' do        
        pessoa.nome = "jose"
        pessoa.idade = 25

        expect(pessoa).to have_attributes(nome: starting_with("j"),idade: (be >= 25))
    end
end