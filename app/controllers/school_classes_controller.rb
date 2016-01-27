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
		render 'school_classes/new'
	end

	def create
		@new_class=SchoolClass.create(post_params)
	end

	def edit
		@school_class=SchoolClass.find(params[:id])
		render 'school_classes/edit'
	end

	def update
		@class=SchoolClass.find(params[:id])
		@class.update(post_params)
		@class.save
		redirect_to(schoolclass_path(@class))
	end

	private
 
		def post_params
			params.require(:school_classes).permit(:title, :room_number)
		end

end
