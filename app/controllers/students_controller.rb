class StudentsController < ApplicationController
  before_action :load_student, only: [:show, :update, :edit]

  def index
    @students = Student.all
  end

  def show
  end

  def new
    @student = Student.new
  end

  def create
    @student = Student.new(student_params)
    if @student.save
      redirect_to student_path(@student)
    else
      redirect_to new_student_path
    end
  end

  def edit
  end

  def update
    if @student.update(student_params)
      redirect_to student_path(@student)
    else
      redirect_to edit_student_path(@student)
    end
  end

  private

  def student_params
    params.require(:student).permit(:first_name, :last_name)
  end

  def load_student
    @student = Student.find(params[:id])
  end
end
