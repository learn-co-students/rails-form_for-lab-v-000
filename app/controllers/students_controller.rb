# Create controller files for school_classes and students. Build out the new, create, show, edit, and update actions in each of the controllers.

class StudentsController < ApplicationController
  def new
    @student = Student.new
  end

  def create
    student = Student.create(student_params)
    redirect_to student_path(student)
  end

  def show
    @student= Student.find(params[:id])
  end

  def edit
    @student = Student.find(params[:id])
  end

  def update
    student = Student.find(params[:id])
    student.update(student_params)
    redirect_to student_path(student)
  end

  private

    def student_params
      params.require(:student).permit(:first_name, :last_name)
    end


end