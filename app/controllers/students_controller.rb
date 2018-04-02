class StudentsController < ApplicationController

  def index
  end

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
    @student = Student.create(first_name: params[:student_first_name], last_name: params[:student_last_name])
    redirect_to student_path(@student)
  end

  def update
    @student = Student.find(params[:id])
    @student.update( params.require(:student).permit(:first_name, :last_name) )
    redirect_to student_path(@student)
  end
end
