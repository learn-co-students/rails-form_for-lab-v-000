class SchoolClassesController < ApplicationController
  def new
  end

  def create
    @class = SchoolClass.new(post_params(:school_class_title, :room_number))
    @class.save
  	redirect_to school_class_path(@class)
  end

  def update
	  @class = SchoolClass.find(params[:id])
	  @class.update(post_params(:title))
	  redirect_to school_class_path(@class)
	end

  def post_params(*args)
  params.require(:class).permit(:school_class_title, :room_number)
	end

end
