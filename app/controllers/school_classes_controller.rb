class SchoolClassesController < ApplicationController
  

  private
 
  def post_params(*args)
    params.require(:school_classes).permit(*args)
  end
end