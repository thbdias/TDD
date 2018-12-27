require 'student'
require 'course'

describe 'Mocks' do
    it '#bar' do
        # setup
        student = Student.new                 
        
        # verify
        expect(student).to receive(:bar)  #testando comportamento

        # exercice
        student.bar 
    end


    it 'args' do
        student = Student.new 
        expect(student).to receive(:foo).with(123)
        student.foo(123)
    end

    it 'repetição' do
        student = Student.new 
        expect(student).to receive(:foo).with(123).twice #espera ser chamado 2x
        student.foo(123)
        student.foo(123)
    end

    it 'retorno' do
        student = Student.new 
        expect(student).to receive(:foo).with(123).and_return(123456) #forçando o retorno   
        puts student.foo(123)
    end
end
