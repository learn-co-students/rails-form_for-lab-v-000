class SchoolClassesController < ApplicationController
	def new
		@school_class = SchoolClass.new
	end

	def show
		@school_class = SchoolClass.find_by_id(params[:id])
	end

	def create
		sc_ = SchoolClass.create(school_class_params)
		redirect_to school_class_path(sc_)
	end

	def edit
		@school_class = SchoolClass.find_by_id(params[:id]) 
	end
	
	def update
		sc_ = SchoolClass.create(school_class_params)
		redirect_to school_class_path(sc_)	
	end
private
 
	def school_class_params
		params.require(:school_class).permit(:title, :room_number)
	end
end
