class StudentsController < ApplicationController

  def new 
  end

  def create 
    @student = Student.new(params)
  end 

  def show
  end 

  def edit 
  end 

  def update
  end 

end 