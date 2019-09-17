class StudentsController < ApplicationController

  def index
  end

  def show
    @student = Student.find(params[:id])
  end

  def new
    @student = Student.new
  end

  def create
    @student = Student.new(student_params(:first_name, :last_name))
    # @student.first_name = params[:first_name]
    # @student.last_name = params[:last_name]
    @student.save
    redirect_to student_path(@student)
  end

  def update
    @student = Student.find(params[:id])
    @student.update(student_params(:first_name, :last_name))
    redirect_to student_path(@student)
  end

  def edit
    @student = Student.find(params[:id])
  end

  private

  def student_params(*args)
    params.require(:student).permit(*args)
  end
end
