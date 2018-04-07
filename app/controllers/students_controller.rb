class StudentsController < ApplicationController

  def new
    @student = Student.new
  end

  def create
    @student = Student.new(student_params)
    @student.save
    redirect_to @student
  end

  def show
    set_student
  end

  def edit
    set_student
  end

  def update
    set_student
    set_student.update(student_params)
    redirect_to set_student
  end

  private
  def set_student
    @student = Student.find(params[:id])
  end

  def student_params
    params.require(:student).permit(:first_name, :last_name)
  end
end
