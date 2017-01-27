class StudentsController < ApplicationController
  def show
    student_id
  end

  def new
    @student = Student.new
  end

  def create
    @student = Student.new(student_params)
    @student.save
    redirect_to student_path(@student)
  end

  def edit
    student_id
  end

  def update
    student_id
    @student.update(student_params)
    redirect_to student_path(@student)
  end

  private
  def student_params
    params.require(:student).permit(:first_name, :last_name)
  end

  def student_id
    @student = Student.find(params[:id])
  end
end
