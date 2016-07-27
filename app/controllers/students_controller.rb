class StudentsController < ApplicationController
  def new
    @student = Student.new
  end

  def create
    @student = Student.create(student_params(:first_name, :last_name))
    redirect_to student_path(@student)
  end

  def show
    @student = Student.find(params[:id])
    redirect_to = student_path(@student)
  end

  def edit

  end

  def update

  end

private
    def student_params(*args)
      params.require(:student).permit(*args)
    end
end
