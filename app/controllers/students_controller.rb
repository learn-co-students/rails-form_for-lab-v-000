class StudentsController < ApplicationController

  def new
    @student = Student.new
  end

  def create
    @student = Student.new(class_params)
    @student.save
    redirect_to student_path(@student)
  end

  def show
    @student = Student.find(params[:id])
  end

  def edit
    @student = Student.find(params[:id])
  end

  def update
    @student = Student.find(params[:id])
    @student.update(class_params)
    redirect_to student_path(@student)
  end

  private
  def class_params
    params.require(:student)
  end

end