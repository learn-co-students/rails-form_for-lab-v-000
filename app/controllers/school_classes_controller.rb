class SchoolClassesController < ApplicationController

	def show
		@school_class = SchoolClass.find_by_id(params[:id])
	end

	def create
		@school_class = SchoolClass.new(post_params)
		@school_class.save
		redirect_to school_class_path(@school_class)		
	end

	def new
		@school_class = SchoolClass.new
	end

	def edit
		@school_class = SchoolClass.find_by_id(params[:id])
	end

	def update
		@school_class = SchoolClass.find_by_id(params[:id])
		@school_class.update(post_params)
		@school_class.save
		redirect_to school_class_path(@school_class)
	end

end

private

	def post_params
		params.require(:school_class)
	end
