class StudentsController < ApplicationController

  def new
    @student = Student.new
  end

  def create
    #binding.pry
    @student = Student.create(student_params)
    redirect_to student_path(@student.id)
  end

  def show
    @student = Student.find(params[:id])
  end

  def edit
    @student = Student.find(params[:id])
  end

  def update
    @student = Student.find_by_id(params[:id])
    @student.update(first_name: params[:student][:first_name], last_name: params[:student][:last_name])
    redirect_to student_path(@student)
  end
  private

  def student_params
    params.require(:student).permit(:first_name, :last_name, :id)
  end

end
