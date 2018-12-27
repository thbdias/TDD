require 'student'
require 'course'

describe 'Stub' do
    it '#has_finished?' do
        student = Student.new 
        course = Course.new 

        #não há implementação do has_finished, mas estamos forçando ele retornar true
        allow(student).to receive(:has_finished?).with(an_instance_of(Course)).and_return(true)

        course_finished = student.has_finished?(course) 

        expect(course_finished).to be_truthy 
    end
end
