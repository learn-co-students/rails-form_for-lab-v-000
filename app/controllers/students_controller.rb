class StudentsController < ApplicationController

    def index
        @students = Student.all
    end

    def new
    end


    def show
        @student = Student.find(params[:id])
    end
    
    def edit
        @student = Student.find(params[:id])
    end

    def create
        @student = Student.new(student)
        @student.save
        redirect_to student_path(@student)
    end
    
    def update
        @student = StudentClass.find(params[:id])
        @student.update(student)
        redirect_to student_path(@student)
    end
end