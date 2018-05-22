class StudentsController < ApplicationController
  def new
    @student = Student.new
  end

  def show
    @student = Student.find(params[:id])
  end

  def edit
  end

  def create
    @student = Student.new(student_params)
    @student.save
    redirect_to student_path(@student)
  end

  def update
  end

  private
  def student_params
    params.require(:student).permit(:first_name, :last_name)
  end
end
