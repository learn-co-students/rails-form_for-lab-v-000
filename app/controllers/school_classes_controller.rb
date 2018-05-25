class SchoolClassesController < ApplicationController

  def index
		@school_classes = SchoolClass.all
	end

	def show
		@school_classes = SchoolClass.find(params[:id])
	end

  def new
		@school_classes = SchoolClass.new
	end

  def create
    @school_classes = SchoolClass.new(params[:school_class])
	  @school_classes.save
	  redirect_to school_class_path(@school_classes)
  end

  def edit
	  @school_classes = SchoolClass.find(params[:id])
	end

	def update
	  @school_classes = SchoolClass.find(params[:id])
	  # @school_classes.update(school_classes_params)
    redirect_to school_class_path(@school_classes)
	end

	private


end
