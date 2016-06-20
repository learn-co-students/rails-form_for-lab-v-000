class StudentsController < ApplicationController
  def show
    @student = Student.find(params[:id])
  end

  def new
    @student = Student.new
  end

  def edit
    @student = Student.find(params[:id])
  end

  def create
    @student = Student.create(params_get(:first_name, :last_name))
    @student.save
    redirect_to student_path(@student)
  end

  def update
    @student = Student.find(params[:id])
    @student.update(params_get(:first_name, :last_name))
    redirect_to student_path(@student)
  end

  private

  def params_get(*args)
    params.require(:student).permit(*args)
  end
end
