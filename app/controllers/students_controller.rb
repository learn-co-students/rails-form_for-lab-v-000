require 'pry'
class StudentsController < ApplicationController

  def new
    @student = Student.new
  end

  def create
    @student = Student.create(student_params)
    redirect_to student_path(@student)
  end

  def show
    @student = find
  end

  def edit
    @student = find
  end

  def update
    @student = find
    @student.update(student_params)
    redirect_to student_path(@student)
  end

  private 
    def find
      Student.find(params[:id])
    end

    def student_params
      params.require(:student).permit(:first_name, :last_name)
    end

end