class StudentsController < ApplicationController
  def new
    @new_student = Student.new
  end

  def show
    @student = Student.find(params[:id])
  end

  def edit
    @edit_student = Student.find(params[:id])
  end

  def create
    student = Student.create(student_params(:first_name, :last_name))
    redirect_to student_path(student)
  end

  def update
    update_student = Student.find(params[:id])
    update_student.update(student_params(:first_name, :last_name))
    redirect_to student_path(update_student)
  end

  private
    def student_params(*args)
      params.require(:student).permit(*args)
    end
end