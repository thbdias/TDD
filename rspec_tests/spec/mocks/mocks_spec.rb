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
end
