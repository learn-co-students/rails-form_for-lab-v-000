class StudentsController < ApplicationController
    
    def new
        @student = Student.new
    end

    def create
        @student = Student.create(student_params)
        @student.save
        redirect_to student_path(@student)
    end

    def show
        @student = get_student
    end

    def edit
        @student = get_student
    end

    def update
        @student = get_student
        @student.update(student_params)
        redirect_to student_path(@student)
    end


    private
    def get_student
        Student.find(params[:id])
    end

    def student_params
        params.require(:student).permit(:first_name, :last_name)
    end
end