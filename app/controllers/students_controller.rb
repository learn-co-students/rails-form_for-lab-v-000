class StudentsController < ApplicationController

  def new
  end

  def create
    binding.pry
    @student = Student.create(params[:student])
    redirect_to student_path(@student)
  end

  def show
  end

  def edit
  end

  def update
  end


end
