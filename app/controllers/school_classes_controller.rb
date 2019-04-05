class SchoolClassesController < ApplicationController

  def show
    @school_class = SchoolClass.find_by(params[:id])
  end

  def create
    @school_class = SchoolClass.create(params.require(:school_class).permit(:title, :room_number))
    redirect_to school_class_path(@school_class)
  end

  def edit
    @school_class = SchoolClass.find_by(params[:id])
  end

  def update
    @school_class = SchoolClass.find_by(params[:id])
    @school_class = SchoolClass.update(params.require(:school_class).permit(:title, :room_number))
    redirect_to school_class_path(@school_class)
  end

  def new
    @school_class = SchoolClass.new
  end
end
