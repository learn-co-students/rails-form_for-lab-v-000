class SchoolClassesController < ApplicationController
  def new
    @school_class = SchoolClass.new
  end

  def create
    @school_class = SchoolClass.new(params.require(:school_class).permit(:room_number, :title))
    @school_class.save
    redirect_to school_class_path(@school_class)
  end

  def show
    @school_class = SchoolClass.find(params[:id])
  end

  def edit
    @school_class = SchoolClass.find(params[:id])
  end

  def update
    @school_class = SchoolClass.find(params[:id])
    @school_class.update(params.require(:school_class).permit(:room_number, :title))
    redirect_to school_class_path(@school_class)
  end
end
