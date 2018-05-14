class StudentsController < ApplicationController

  def show
    @student = Student.find(params[:id])
  end

  def new
    @studnet = Student.new
  end

  def create
    @student = Student.new(student_params)
    @student.save
    redirect_to student_path(@student)
  end

  def edit
  end

  def update

  end

  def student_params
    params.require(:student).permit(:first_name, :last_name)
  end
end
