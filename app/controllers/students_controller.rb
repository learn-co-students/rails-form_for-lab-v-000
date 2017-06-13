class StudentsController < ApplicationController

  def new
  end

  def create
    @student.create(school_class_params(:first_name, :last_name))
    redirect_to school_class_path(@student)
  end

  def show
    @student = Student.find(params[:id])
  end

  def edit
    @student = Student.find(params[:id])
  end

  def update
    @student = Student.find(param[:id])
    @student.update(student_params(:first_name, :last_name))
  end

  private

  def student_params(*args)
    params.require(:student).permit(*args)
  end

end
