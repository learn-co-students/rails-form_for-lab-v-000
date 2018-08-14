class StudentsController < ApplicationController
  
  def new
    @student = Student.new
  end

  private
 
  def post_params(*args)
    params.require(:student).permit(*args)
  end
end