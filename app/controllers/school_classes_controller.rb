class SchoolClassesController < ApplicationController

  def index
		@school_classes = SchoolClass.all
	end

	def show
		@school_class = SchoolClass.find(params[:id])
	end

	def new
		@school_class = SchoolClass.new
	end

	def create
	end

	def edit
	  @school_class = SchoolClass.find(params[:id])
	end

  def update
	  @school_class = SchoolClass.find(params[:id])

	  redirect_to student_path(@school_class)
	end


end
