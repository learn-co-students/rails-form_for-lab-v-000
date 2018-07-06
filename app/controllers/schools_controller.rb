class SchoolClassesController < ApplicationController

  def new 
  end

  def create 
    @school = School.new(params)
  end 

  def show
  end 

  def edit 
  end 

  def update
  end 

end 