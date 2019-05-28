class StudentsController < ApplicationController

    def new
        @student = Student.new
    end

    def create
        @student = Student.new(student_class_params)
        @student.save
        redirect_to Student.last
    end

    def student_class_params
        params.require(:student).permit!
    end

end