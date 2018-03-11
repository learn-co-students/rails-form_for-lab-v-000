class SchoolClassesController < ApplicationController
  def index
    @class = SchoolClass.all
  end

  def show
    @class = SchoolClass.find(params[:id])
  end
  
  def new
    @class = SchoolClass.new
  end
  
  def create
		@class = SchoolClass.new(params.require(:school_class))
	  @class.save
	  redirect_to school_class_path(@class)
  end


  
  # private
  #   def post_params(*args)
  #     params.require(:post).permit(:title, :room_number)
  #   end
end


