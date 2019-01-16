class StudentsController < ApplicationController
  def create
    @student = Student.create(first_name: params[:student][:first_name], last_name: params[:student][:last_name])
    redirect_to student_path(@student)
  end

  def new
    @student = Student.new
  end

  def edit
  end

  def update
  end

  def show
  end
end
