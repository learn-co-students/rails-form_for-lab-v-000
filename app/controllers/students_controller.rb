class StudentsController < ApplicationController

  def show
    @student = Student.find_by(params[:id])
  end

  def create
    @student = Student.create(params.require(:student).permit(:first_name, :last_name))
    redirect_to student_path(@student)
  end

  def edit
    @student = Student.find_by(params[:id])

  end

  def new
    @student = Student.new
  end

  def update
    @student = Student.find_by(params[:id])
    @student = Student.update(params.require(:student).permit(:first_name, :last_name))
    redirect_to student_path(@student)
  end
end
