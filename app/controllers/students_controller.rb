require 'pry'
class StudentsController < ApplicationController

  def create
    @student = Student.create(params.require(:student).permit(:first_name, :last_name))
    redirect_to student_path(@student)
  end

  def new
    @student = Student.new
  end

  def show
    @student = Student.find(params[:id])
  end

  def edit
    @student = Student.find(params[:id]) 
  end

  def update
    @student = Student.find(params[:id])
    @student.update(params[:student])
    redirect_to student_path
  end

end