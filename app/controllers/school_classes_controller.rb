class SchoolClassesController < ApplicationController
	def new

	end

	def create
		@class = SchoolClass.new(class_params)
		@class.save
		redirect_to @class
	end

	def show
		@class = SchoolClass.find(params[:id])
	end

	def edit
		@class = SchoolClass.find(params[:id])
	end

	def update
		@class = SchoolClass.find(params[:id])
		@class.update(class_params)
		redirect_to @class
	end



	def class_params
		params.require(:school_class).permit(:title, :room_number)
	end


end