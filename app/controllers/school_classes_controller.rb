require 'pry'

class SchoolClassesController < ApplicationController

  def new
    @school_class = SchoolClass.new
  end

  def create
    @school_class = SchoolClass.create(room_number: params[:school_class][:room_number], title: params[:school_class][:title])
    redirect_to school_class_path(@school_class)
  end

  def show
    @school_class = SchoolClass.find(params[:id])
  end

  def edit
    @school_class = SchoolClass.find(params[:id])
  end

  def update
    @school_class = SchoolClass.find(params[:id])
    @school_class.update(params.require(:school_class).permit(:room_number, :title))
    redirect_to school_class_path(@school_class) #forgot a redirect...
  end


  # private
	# We pass the permitted fields in as *args;
	# this keeps `post_params` pretty DRY while
	# still allowing slightly different behavior
	# depending on the controller action

	# def school_class_params(*args)
	#   params.require(:school_class).permit(*args)
	# end

end
