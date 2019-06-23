class SchoolClassesController < ApplicationController
  
	def show
		@school_classes = SchoolClasses.find(params[:id])
	end

	def new
		@school_class = SchoolClass.new
	end

	def create
	  @school_class = SchoolClass.new(post_params(:title,:description))
	  @school_class.save
	  redirect_to school_class_path(@school_class)
	end

	def update
	  @school_class = SchoolClass.find(params[:id])
	  @school_class.update(school_class_params(:title))
	  #@post.update(params["post"])
	  redirect_to school_class_path(@school_class)
	end

	def edit
	  @school_class = SchoolClass.find(params[:id])
	end

	private #secures the helper method

	def school_class_params(*args) #is the helper method 

		params.require(:school_class).permit(*args)
		#uses .require and .permit methods as stronger params to prevent hacks through inspect element right click edit html 
		#require restricts, permit allows, and *args is for the custom arguments
	end
end