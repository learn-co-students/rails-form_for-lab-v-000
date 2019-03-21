class StudentsController < ApplicationController
  def index
    @students = Student.all
  end

  def new
  end

  def create
    @student = Student.create(student_params(:first_name, :last_name))
    redirect_to student_path(@student)
  end

  def show
    @student = Student.find_by_id(params[:id])
  end

  def edit
    @student = Student.find_by_id(params[:id])
  end

  def update
    @student = Student.find_by_id(params[:id])
    @student.update(student_params(:first_name, :last_name))
    redirect_to student_path(@student)
  end

  def student_params(*args)
    params.require(:student).permit(*args)
  end
end
