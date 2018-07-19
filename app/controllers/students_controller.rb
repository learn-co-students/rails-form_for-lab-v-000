class StudentsController < ApplicationController

  def index
    @students = Student.all
  end

  def new
    @student = Student.new
  end

  def create
    @student = Student.create(params.require(:post).permit(:first_name, :last_name))
    @student.save
	  redirect_to student_path(@student)
  end

  def show
    @student = Student.find(params[:id])
  end

  def edit
  end

  def update
  end

end
