class StudentsController < ApplicationController
    def create
        @student = Student.new(params.require(:student))
        @student.save
        redirect_to student_path(@student)
    end
end
