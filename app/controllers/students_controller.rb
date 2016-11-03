class StudentsController < ApplicationController

  def show
    select_student
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
    select_student
  end

  def update
    select_student
    @student.update(student_params)
    redirect_to student_path(@student)
  end

  private

  def select_student
    @student = Student.find(params[:id])
  end

  def student_params
    params.require(:student).permit(:first_name, :last_name)
  end

end
