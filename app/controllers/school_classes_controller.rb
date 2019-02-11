class SchoolClassesController < ApplicationController

  def index
    @school_classes = SchoolClass.all
  end
  
  def show 
      = SchoolClass.find(params[:id])
  end 

  def new
		@school_class = SchoolClass.new(params.require(:school_class).permit(:title, :room_number))
	end

end