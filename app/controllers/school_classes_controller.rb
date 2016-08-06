class SchoolClassesController < ApplicationController

  def index
    @school_classes = SchoolClass.all
  end

  def create
    @school_class = SchoolClass.new(params.require(:school_class).permit(:title, :room_number))
    @school_class.save
    redirect_to school_class_path(@school_class)
  end

  def new
    @school_class = SchoolClass.new
  end

  def edit
    @school_class = SchoolClass.find_by(params[:id])
  end

  def show
    @school_class = SchoolClass.find_by(params[:id])
  end

  def update
    @school_class = SchoolClass.find(params[:id])
    #@school_class = SchoolClass.update(params.permit(:title))
    redirect_to school_class_path(@school_class)
  end


end