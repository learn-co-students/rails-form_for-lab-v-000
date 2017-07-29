class StudentsController < ApplicationController

  def show
    @student = Student.find(params[:id])
  end

  def new
    @student = Student.new
  end

  def create
    @student = Student.create(students_params(:first_name,:last_name))

    redirect_to student_path(@student)
  end

  def edit
    @student = Student.find(params[:id])
  end

  def update
    @student = Student.find(params[:id])
    @student.update(students_params(:first_name,:last_name))
    redirect_to student_path(@student)
  end

  def students_params(*args)
    params.require(:student).permit(*args)
  end

end
