class SchoolClassesController < ApplicationController
	def index
		@SchoolClasses = SchoolClass.all
	end

	def show
		@SchoolClass = SchoolClass.find(params[:id])
	end

	def new
		@SchoolClass = SchoolClass.new
	end

	def create
	  @SchoolClass = SchoolClass.create(params.require(:school_class))
	  redirect_to school_class_path(@SchoolClass)
	end

	def edit
		@SchoolClass = SchoolClass.find(params[:id])
	end

	def update
	  @SchoolClass = SchoolClass.find(params[:id])
    @SchoolClass.update(params.require(:school_class))
	  redirect_to school_class_path(@SchoolClass)
	end
end
