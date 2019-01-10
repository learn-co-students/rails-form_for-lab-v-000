class StudentsController < ApplicationController
    # Prevent CSRF attacks by raising an exception.
    # For APIs, you may want to use :null_session instead.
    protect_from_forgery with: :exception

    def index
        @students = Student.all
    end

    def new
        @student = Student.new
    end

    def show
        @student = Student.find(params[:id])
    end

    def create
        @student = Student.new(student_params)
        @student.save
        redirect_to student_path(@student)
    end

    private
    def student_params(*args)
        params.require(:student).permit(*args)
    end
  end
  