class StudentsController < ApplicationController

  def index
    @students = Student.all
  end

  def new
    @student = Student.new
  end

  def edit
    @student = Student.find(params[:id])
  end

  def show
    @student = Student.find(params[:id])
  end

  def create
    @student = Student.create(post_params(:first_name, :last_name))
    redirect_to student_path(@student)
  end

  def update
    @student = Student.update(post_params(:first_name, :last_name))
    redirect_to student_path(@student)
  end



  private

  def post_params(*args)
    params.require(:student).permit(*args)
  end
end
