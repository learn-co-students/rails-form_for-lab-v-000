class StudentsController < ApplicationController
  

  private
 
  def post_params(*args)
    params.require(:student).permit(*args)
  end
end