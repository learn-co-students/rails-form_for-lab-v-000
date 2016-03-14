class StudentsController < ApplicationController

  def new
    @student = Student.new
  end

  def create
    @student = Student.new(params.require(:student))
    @student.save
    redirect_to student_path(@student)
  end

  def show
    find_id
  end

  def edit
    find_id
  end

  def update
    find_id
    @student.update(params.require(:student))
    redirect_to student_path(@student)
  end

  def find_id
    @student = Student.find(params[:id])
  end


end
