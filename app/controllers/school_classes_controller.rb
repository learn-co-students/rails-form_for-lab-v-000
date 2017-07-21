class SchoolClassesController < ApplicationController

	def index
		@school_classes = SchoolClass.all
	end

	def new
		@school_class = SchoolClass.new
	end

	def create
		@school_class = SchoolClass.new(class_params)
		@school_class.save
		redirect_to school_class_path(@school_class)
	end

	def show
		@school_class = find_class
	end

	def edit
		@school_class = find_class
	end

	def update
		@school_class = find_class
		@school_class.update(class_params)
		redirect_to school_class_path(@school_class)
	end

	private

	def class_params
		params.require(:school_class).permit(:title, :room_number)
	end

	def find_class
		SchoolClass.find(params[:id])
	end
end