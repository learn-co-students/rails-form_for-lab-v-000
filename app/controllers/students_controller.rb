class StudentsController < ApplicationController

  def index
  end

  def show
  end

  def create
    # binding.pry
    @student = Student.create(first_name: params[:first_name], last_name: params[:last_name])
    redirect_to student_path(@student)
	end


end
