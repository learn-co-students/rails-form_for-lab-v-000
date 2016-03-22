class StudentsController < ApplicationController

  def show
    @student = current_student
  end

  def new
    @student = Student.new
  end

  def create
    @student = Student.create(params_path)
    redirect_to student_path(@student)
  end

  def edit
    @student = current_student
  end

  def update
    @student = current_student
    @student.update(params_path)
    redirect_to student_path(@student)
  end

  private

    def current_student
      Student.find(params[:id])
    end

    def params_path
      params.require(:student).permit(:first_name, :last_name)
    end


end