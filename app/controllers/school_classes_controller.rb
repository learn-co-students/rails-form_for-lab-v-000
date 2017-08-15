class SchoolClassesController < ApplicationController

  def index
		@classes = Class.all
	end

	def show
		@class = Class.find(params[:id])
	end

	def new
		@class = Class.new
	end

	def create
		@class = Class.new(class_params(:title, :room_number))
	  @class.save
	  redirect_to class_path(@class)
	end

	def update
		@class = Class.find(params[:id])
	  @class.update(class_params(:title, :room_number))
	  redirect_to class_path(@class)
	end

	def edit
	  @class = Class.find(params[:id])
	end

	private

	def class_params(*args)
		params.require(:class).permit(*args)
	end

end
