class SchoolClassesController < ApplicationController

	def index
		@school_classes=SchoolClass.all
		render 'school_classes/index'
	end

	def show
		@school_class=SchoolClass.find(params[:id])
		render 'school_classes/show'
	end

	def new
		@school_class=SchoolClass.new
	end

	def create
		new_school_class=SchoolClass.create(post_params)
		redirect_to school_class_path(new_school_class)
	end

	def edit
		@school_class=SchoolClass.find(params[:id])
		render 'school_classes/edit'
	end

	def update
		@class=SchoolClass.find(params[:id])
		@class.update(post_params)
		@class.save
		redirect_to(school_class_path(@class))
	end

	private
 
		def post_params
			params.require(:school_class).permit(:title, :room_number)
		end

		def class_params
			params.permit(:title, :room_number)
		end

end
