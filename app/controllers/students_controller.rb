class StudentsController < ApplicationController 
  def create 
    @student = Student.create(params.require(:student).permit(:first_name, :last_name))
    redirect_to student_path(@student)
  end 


end 