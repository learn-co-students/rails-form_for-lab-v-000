class SchoolClassesController < ApplicationController

  def new
    @classes = SchoolClass.new
  end

  def create 
    @classes = SchoolClass.create(class_params)
    redirect_to school_class_path(@classes)
  end 

  def show
    @classes = SchoolClass.find(params[:id])
  end

  def edit
    @classes = SchoolClass.find(params[:id])
  end 

  def update 
    @classes = SchoolClass.find(params[:id])
    @classes.update(class_params)
    redirect_to school_class_path(@classes)
  end

  def class_params
    params.require(:school_class).permit(:title, :room_number)
  end
end #ends class