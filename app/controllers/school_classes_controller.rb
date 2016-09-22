class School_Classes_Controller < ApplicationController

	def index
		@school_classes = School_class.all
	end

	def show
		@school_class = School_class.find(params[:id])
	end

	def new
		@school_class = School_class.new
	end

	def create
	  @school_class = School_class.new
	  @school_class.title = params[:title]
	  @school_class.description = params[:description]
	  @school_class.save
	  redirect_to post_path(@school_class)
	end

	def edit
		@school_class = School_class.find(params[:id])
	end

	def update
	  @school_class = School_class.find(params[:id])
		@school_class.update(params.require(:school_class))
	  redirect_to school_class_path(@school_class)
	end
end
