class StudentsController < ApplicationController

  def index
    @student = Student.all
  end

  def new
    @student = Student.new
  end

  def show
    @student = Student.find_by(id: params[:id])
  end

  def create
    @student = Student.new(new_params(:first_name, :last_name))
    @student.save

    redirect_to student_path(@student)
  end

  def edit
    @student = Student.find_by(id: params[:id])
  end

  def update
    @student = Student.find_by(id: params[:id])
    @student.update(new_params(:first_name, :last_name))
    redirect_to student_path(@student)
  end

  private

  def new_params(*arg)
    params.require(:student).permit(*arg)
  end
end
