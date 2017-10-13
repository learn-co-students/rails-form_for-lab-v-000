class StudentsController < ApplicationController

  def index
  end

  def show
  end

  def new
  end

  def create
    @student = Student.new
    @student.save
    # binding.pry
    redirect_to student_path(@student)
  end

  def edit
  end

  def update
  end

  def destroy
  end
end
