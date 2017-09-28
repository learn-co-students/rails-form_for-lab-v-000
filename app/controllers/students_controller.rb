class StudentsController < ApplicationController

  def index
  end

  def new
    @student = Student.new
  end

  def create
    @student = Student.new(params.require(:student).permit(:first_name, :last_name))
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
    @edit_student = Student.find(params[:id])
    @edit_student.update(params.require(:student).permit(:first_name, :last_name))
    redirect_to student_path(@edit_student)
  end
end
