class StudentsController < ApplicationController

  def create
    @student = Student.new(student_params)
    @student.save
    redirect_to student_path(@students)
  end   
    
end 