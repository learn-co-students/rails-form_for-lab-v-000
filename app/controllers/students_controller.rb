class StudentsController < ApplicationController

  def index
    @students = Student.all
  end

  def create
    @student = Student.create(student_params(:first_name, :last_name))
    redirect_to student_path(@student)
  end

  def new
    @student = Student.new
  end

  def show
    @student = current_student
  end

  def edit
    @student = current_student
  end

  def update
    @student = current_student
    @student.update(student_params(:first_name, :last_name))
    redirect_to student_path(@student)
  end

  private

  def current_student
    Student.find(params[:id])
  end

  def student_params(*args)
    params.require(:student).permit(*args)
  end

end
