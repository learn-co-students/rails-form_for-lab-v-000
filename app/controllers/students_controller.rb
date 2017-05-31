class StudentsController < ApplicationController

  def new
    @student = Student.new
  end

  def create
    @student = Student.create(stronk_params)
    redirect_to student_path(@student)
  end

  def show
    @student = Student.find(params[:id])
  end

  def edit
    @student = Student.find(params[:id])
  end

  def update
    @student = Student.find(params[:id])
    @student.update(stronk_params)
    redirect_to student_path(@student)
  end

  private

  def stronk_params
    params.require(:student).permit(:first_name,:last_name)
  end


end
