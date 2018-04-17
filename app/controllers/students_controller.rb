class StudentsController < ApplicationController
  
  def index
    @students = Student.all
  end
  
  def new
    @student = Student.new
  end
  
  def create
    @student = Student.new(student_params(:first_name, :last_name))
    redirect_to student_path(@student) if !!@student.save
  end
  
  def show
    @student = Student.find_by(:id => params["id"])
  end
  
  def edit
    @student = Student.find_by(:id => params["id"])
  end
  
  def update
    @student = Student.update(params["id"], student_params(:first_name, :last_name))
    redirect_to student_path(@student)
  end
  
  private
  
  def student_params(*args)
    params.require(:student).permit(*args)
  end
end
