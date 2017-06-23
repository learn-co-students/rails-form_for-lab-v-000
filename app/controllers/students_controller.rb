class StudentsController < ApplicationController

  def index
    @students = Student.all
  end

  def show
    @student = Student.find(params[:id])
  end

  def new
    @student = Student.new
  end

  def create
    @student = Student.create(student_params)
    redirect_to student_path(@student)
  end

  def edit
    @student = Student.find(params[:id])
  end

  def update
    @student = Student.find(params[:id])
    @student.update(student_params)
    redirect_to student_path(@student)
  end

  private

  def student_params
    params.require(:student).permit(:first_name, :last_name)
  end

end

# {"utf8"=>"✓",
#  "authenticity_token"=>"hOR1VmKjc+zS+1KzzoPistCSa7s8GTYSoormZ+TpfOJ1ZTgrBgu6BAQHOz4x2dTNjKNXfcvUAn4D+d68M54VQA==",
#  "student"=>{"first_name"=>"saad",
#  "last_name"=>"ahmed"},
#  "commit"=>"Create Student"}
