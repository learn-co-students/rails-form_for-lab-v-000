class StudentsController < ApplicationController

  def new
  end

  def show
    @student = Student.find(params[:id])
  end

  def create
    binding.pry
    @student = Student.create(first_name: params[:student][:first_name], last_name: params[:student][:last_name])
    redirect_to student_path(@student)
  end

  def edit
    @student = Student.find(params[:id])
  end
end
