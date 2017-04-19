class StudentsController < ApplicationController

  def new
    @student = Student.new
  end

  def create
    @student = Student.create(last_name: params[:student][:last_name], first_name: params[:student][:first_name])
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
    @student.update(params.require(:student).permit(:last_name, :first_name))
    redirect_to student_path(@student)
  end

end
