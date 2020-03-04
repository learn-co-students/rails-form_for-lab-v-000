class StudentsController < ApplicationController

  def new
  end

  def create
    @student = Student.new(post_params)
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

  def post_params
    params.require(:students).permit(:first_name, :last_name)
  end
end
