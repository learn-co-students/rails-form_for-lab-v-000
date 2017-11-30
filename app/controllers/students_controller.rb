class StudentsController < ApplicationController
    def index
    end

    def show
        @student = Student.find_by(id: params[:id])
    end

    def new
        @student = Student.new
    end

    def edit
        @student = Student.find_by(id: params[:id])
    end

    def delete
    end

    def create
        @student = Student.create(student_params(:first_name, :last_name))
        redirect_to @student
    end

    def update
        @student = Student.find_by(id: params[:id]) 
        @student.update(student_params(:first_name, :last_name))
        redirect_to @student
    end

    private
    
    def student_params(*args)
        params.require(:student).permit(*args)
    end
end
