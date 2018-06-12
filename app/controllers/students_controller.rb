class StudentsController < ApplicationController
  
  def new 
    @student = Student.new
    render 'form'
  end 
  
  def show
    @student = set_student
  end 
  
  def edit 
    @student = set_student
    render 'form'
  end 
  
  def create
    student = Student.create(post_params)
    redirect_to student_path(student)
  end 
  
  def update 
    student = set_student
    student.update(post_params)
    redirect_to student_path(student)
  end 
  
  private 
  
  def post_params
    params.require(:student).permit(:first_name, :last_name)
  end 
  
  def set_student
    Student.find(params[:id])
  end 
end 