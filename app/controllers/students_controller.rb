
class StudentsController < ApplicationController
  
  def index
    @students = Student.all
  end
  
  def show
    @student = Student.find()
  end
  
  
end