class SchoolClassesController < ApplicationController

  def index
    @classes = SchoolClass.all
  end
  

  def new
    @school_class = SchoolClass.new
  end

  def create
    @s_class = SchoolClass.new(params.require(:school_class).permit(:title, :room_number))
    @s_class.save
    redirect_to school_class_path(@s_class) 
  end

  def show
    @s_class = SchoolClass.find(params[:id])
  end

  def edit
    @school_class = SchoolClass.find(params[:id])
  end

  def update
    @s_class = SchoolClass.find(params[:id])
    @s_class.update(params.require(:school_class).permit(:title, :room_number))
    @s_class.save
    redirect_to school_class_path(@s_class) 
  end

end

