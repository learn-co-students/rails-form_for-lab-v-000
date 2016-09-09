class SchoolClassesController < ApplicationController

	def show
		@school_classes = SchoolClasses.find(params[:id])
	end

	def new
		@school_classes = SchoolClasses.new
	end

	def create
	  @school_classes = SchoolClasses.create(school_classes_params)
	  @school_classes.save
	  redirect_to school_classes_path(@school_classes)
	end

	def update
	  @school_classes = SchoolClasses.find(params[:id])
	  @school_classes.update(school_classes_params(:title))
	  redirect_to school_classes_path(@school_classes)
	end

	def edit
	  @school_classes = SchoolClasses.find(params[:id])
	end

	private

	def school_classes_params(*args)
		params.require(:school_classes).permit(*args)
	end
end
