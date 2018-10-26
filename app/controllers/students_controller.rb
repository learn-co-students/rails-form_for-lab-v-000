class StudentsController < ApplicationController
    def new
        @student = Student.new
    end

    def index
        @students = Student.all
    end

    def show
        @student = Student.find(params[:id])
    end

    def edit
        @student = Student.find(params[:id])
    end

    def update
        @student = Student.find(params[:id])
        @student.update(params.require(:student))
        @student.save
        redirect_to student_path(@student)
    end

    def create
        @student = Student.new(params.require(:student))
        @student.save
        redirect_to student_path(@student)
    end
end