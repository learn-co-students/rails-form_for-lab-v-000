class StudentsController < ApplicationController
  def show
    @student = Student.find(params[:id])
  end

  def new
    @student = Student.new
  end

  def edit
    @student = Student.find(params[:id])
  end

  def create
    @student = Student.new(params.require(:student))
    @student.save
    redirect_to student_path(@student)
  end

  def update
    @student = Student.find(params[:id])
    @student.update(student_params(:first_name,:last_name)
    redirect_to student_path(@student_path)
  end

  private

  def student_params(*args)
    params.require(:student).permit(*args)
  end


end
