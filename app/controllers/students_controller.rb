class StudentsController < ApplicationController
  def new
    @student = Student.new
  end

  def create
    student = Student.create(student_params)
    redirect_to student_path(student)
  end

  def show
    grab_student
  end

  def edit
    grab_student
  end

  def update
    grab_student
    @student.update(student_params)
    redirect_to student_path(@student)
  end

  private

  def student_params
    params.require(:student).permit(:first_name, :last_name)
  end

  def grab_student
    @student = Student.find(params[:id])
  end
end
