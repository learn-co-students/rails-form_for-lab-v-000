require 'pry'
class SchoolClassesController < ApplicationController
	before_action :set_class, only: [:show, :edit, :update]

	def index
		@school_classes = SchoolClass.all
	end

	def show
		#binding.pry
	end

	def new
		@school_class = SchoolClass.new
	end

	def create
		@school_class = SchoolClass.new(class_params(:title, :room_number))
		redirect_to school_class_path(@school_class) if @school_class.save
	end

	def edit
		
	end

	def update
		@school_class.update(class_params(:title, :room_number))
		redirect_to school_class_path(@school_class)
	end

	private

	def set_class
		@school_class = SchoolClass.find(params[:id])
	end

	def class_params(*args)
		params.require(:school_class).permit(*args)
	end
end
