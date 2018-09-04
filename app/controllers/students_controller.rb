class StudentsController < ApplicationController
    
  def show 
    students_find
  end
  
  def new 
    @student = Student.new
  end
  
  def create 
    @student = Student.create!(students_params(:first_name, :last_name))
    redirect_to @student
  end
  
  def edit 
    students_find
  end 
  
  def update 
    students_find
    @student.update(students_params(:first_name, :last_name))
    redirect_to @student
  end
  
  private
  
  def students_params(*args)
    params.require(:student).permit(*args)
  end
  
  def students_find
    @student = Student.find(params[:id])
  end
end