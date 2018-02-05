class StudentsController < ApplicationController
  before_action :set_student, only: [:show, :edit, :update]

  #def show
  #end

  #def edit
  #end

  def new
    @student = Student.new
  end

  def create
    @student = Student.create(student_params(:first_name, :last_name))
    redirect_to_show
  end

  def update
    @student.update(student_params(:first_name, :last_name))
    redirect_to_show
  end

  private

  def set_student
    @student = Student.find(params[:id])
  end

  def student_params(*args)
    params.require(:student).permit(*args)
  end

  def redirect_to_show
    redirect_to student_path(@student)
  end

end
