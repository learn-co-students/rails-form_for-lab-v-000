class StudentsController < ApplicationController
  def new
  end

  def index
  end

  def show
    find_student
  end

  def create
    @student = Student.create(pass_params)

    redirect_to student_path(@student)
  end

  def update
    find_student
    @student.update(pass_params)

    redirect_to student_path(@student)
  end

  def edit
    find_student
  end

  private

  def find_student
    @student = Student.find(params[:id])
  end

  def pass_params
    params.require(:student).permit(:first_name, :last_name)
  end
end
