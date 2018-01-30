class StudentsController < ApplicationController

  def new
    @student = Student.new
  end

  def create
    @student = Student.new(params.require(:student).permit(:first_name, :last_name))
    @student.save
    redirect_to student_path(@student)
  end

  def show
    @student = find_student
  end

  def edit
    @student = find_student
  end

  def update
    @student = find_student
    @student.update(params.require(:student).permit(:first_name, :last_name))
    redirect_to student_path(@student)
  end

  def find_student
    Student.find(params[:id])
  end
end