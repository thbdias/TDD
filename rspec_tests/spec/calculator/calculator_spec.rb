require 'calculator'

describe Calculator, "Sobre a Calculadora" do

  #subject (:subject) { describe_class.new(1,2,3) } # subject explicito

  context '#div' do
    it 'divide by 0' do      
      #expect{subject.div(3, 0)}.to raise_exception #trocar () por {} e usar o subject direto no expect 
      #expect{subject.div(3, 0)}.to raise_error(ZeroDivisionError) #class do erro
      #expect{subject.div(3, 0)}.to raise_error("divided by 0") #message do erro
      #expect{subject.div(3, 0)}.to raise_error(ZeroDivisionError, "divided by 0") #classe e message do erro
      expect{subject.div(3, 0)}.to raise_error(/divided/) #expressão regular
    end
  end
  

  context '#sum' do
    it 'with positive numbers' do      
      result = subject.sum(5, 7)
      expect(result).to eq(12)      
    end

    it 'with negative and positive numbers' do      
      result = subject.sum(-5, 7)
      expect(result).to eq(2)
    end

    it 'with negative numbers' do      
      result = subject.sum(-5, -7)
      expect(result).to eq(-12)
    end
  end #end context
end