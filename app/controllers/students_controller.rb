class StudentsController < ApplicationController

  def index
    @students = Student.all
  end


  def new
    @student = Student.new
  end


  def create
   @student = Student.new(student_params(:first_name, :last_name))
   @student.save
   redirect_to student_path(@student)
  end


  def edit
    @student = set_student
  end


  def update
    @student = set_student
    @student.update(student_params(:first_name))
    redirect_to student_path(@student)
  end


  def show
    @student = set_student
  end

private

  def set_student
    Student.find_by_id(params[:id])
  end

  def student_params(*args)
    params.require(:student).permit(*args)
  end


end
