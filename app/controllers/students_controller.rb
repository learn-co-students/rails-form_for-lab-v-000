class StudentsController < ApplicationController
  def show
    find_student
  end

  def index
    @students = Student.all
  end

  def create
    @student = Student.new(student_params)
    @student.save
    redirect_to student_path(@student)
  end

  def update
    @student = find_student
    @student.update(student_params)
    redirect_to student_path(@student)
  end

  def edit
    @student = find_student
  end

  def new
    @student = Student.new
  end

  private

  def find_student
    @student = Student.find(params[:id])
  end

  def student_params
    params.require(:student).permit(:first_name, :last_name)
  end
end
