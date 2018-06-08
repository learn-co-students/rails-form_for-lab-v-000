class StudentsController < ApplicationController
  def create
    @student = Student.create(params.require(:student))
    redirect_to student_path(@student)
  end

  def show
    @student = find_student(params)
  end

  def new
    @student = Student.new
  end

  def edit
    @student = find_student(params)
  end

  def update
    @student = find_student(params)
    @student.update(student_params)
    redirect_to student_path(@student)
  end

  private
  def find_student(params)
    Student.find(params[:id])
  end

  def student_params
    params.require(:student)
  end
end
