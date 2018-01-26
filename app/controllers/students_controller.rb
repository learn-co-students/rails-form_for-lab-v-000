class StudentsController < ApplicationController

  def new
    @student = Student.new
  end

  def create
    @student = Student.create(strong_params)
    redirect_to student_path(@student)
  end

  def show
    @student = find_by_params
  end

  def edit
    @student = find_by_params
  end

  def update
    @student = find_by_params
    @student.update(strong_params)
    redirect_to student_path(@student)
  end

  private

  def find_by_params
    Student.find(params[:id])
  end

  def strong_params
    params.require(:student).permit(:first_name,:last_name)
  end
end
