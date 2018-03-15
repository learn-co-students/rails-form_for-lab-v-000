class SchoolClassesController < ApplicationController

  def new
  end

  def create
    sclass = SchoolClass.new(params.require(:school_class).permit(:title, :room_number))
    sclass.save
    redirect_to school_class_path sclass
  end

  def show
    @sclass = SchoolClass.find(params[:id])
  end

  def edit
    @sclass = SchoolClass.find(params[:id])
  end

  def update
    sclass = SchoolClass.find(params[:id])
    sclass.update(params.require(:school_class).permit(:title, :room_number))
    redirect_to school_class_path sclass
  end
end
