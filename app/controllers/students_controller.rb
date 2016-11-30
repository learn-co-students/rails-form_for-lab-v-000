class StudentsController < ApplicationController
  before_action :select_student, only: [:show, :edit, :update]

  def new
    @student = Student.new
  end

  def create
    @student = Student.new(student_params)
    @student.save
    redirect_to student_path(@student)
  end

  def show
    #before_action
  end

  def edit
    #before_action
  end

  def update
    @student.update(student_params)
    redirect_to student_path(@student)
  end

  private
    def select_student
      @student = Student.find(params[:id])
    end

    def student_params
      params.require(:student).permit(:first_name, :last_name)
    end
end
