require 'pry'

class StudentsController < ApplicationController
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
    @student = Student.create(school_students_params)
    redirect_to student_path(@student)
  end

  def edit
    @student = Student.find(params[:id])
  end

  def update
    @student = Student.find(params[:id])
    @student.update(school_students_params)
    redirect_to student_path(@student)
  end

  def school_students_params
    params.require(:student).permit(:first_name, :last_name)
  end
end
