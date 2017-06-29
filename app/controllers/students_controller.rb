class StudentsController < ApplicationController
  # new is empty because its purpose is just to direct you to the new view where the form is.
  def new
    @student = Student.new
  end

  def create
    @student = Student.new(student_params(:first_name, :last_name))
    @student.save
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
    @student.update(student_params(:first_name, :last_name))
    redirect_to student_path(@student)
  end

  private

  def student_params(*args)
    params.require(:student).permit(*args)
  end
end
