class StudentsController < ApplicationController

  def new
    @student = Student.new
  end

  def show
    @student = Student.find(params[:id])
  end

  def edit
    @student = Student.find(params[:id])
  end

  def create
    @student = Student.new(s_params(:first_name, :last_name))
    @student.save
    redirect_to student_path(@student)
  end

  def update
    @student = Student.find(params[:id])
    @student.update(s_params(:first_name, :last_name))
    redirect_to student_path(@student)
  end

  private

  def s_params(*args)
    params.require(:student).permit(*args)
  end

end
