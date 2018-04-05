class StudentsController < ApplicationController
  def new
    @student=Student.new
  end
  def edit
    @student= Student.find(params[:id])
  end
  def show
    @student= Student.find(params[:id])
  end
  def create
    @student= Student.new(params.require(:student).permit(:first_name,:last_name))
    @student.save
    redirect_to student_path(@student)
  end
  def update
    @student=Student.find(params[:id])
  #  @student.update(fist_name: params[:first_name], last_name: params[:last_name])
    @student.update(params.require(:student).permit(:first_name,:last_name))
    redirect_to student_path(@student)
  end
end
