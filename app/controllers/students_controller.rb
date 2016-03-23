class StudentsController < ApplicationController
  def create
    student = Student.create(params.require(:student).permit(:first_name, :last_name))
    redirect_to student_path(student)
  end
  def new
    @student = Student.new
  end
  def show
    @student = Student.find_by_id(params[:id])
  end
  def edit
    @student = Student.find_by_id(params[:id])
  end
  def update
    student = Student.find_by_id(params[:id])
    student.update(params.require(:student).permit(:first_name, :last_name))
    redirect_to student_path(student)
  end
end
