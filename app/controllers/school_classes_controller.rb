class SchoolClassesController < ApplicationController
  def new
    @schoolClass = SchoolClass.new
  end

  def create
    @schoolClass = SchoolClass.create(params.require(:school_class).permit(:title, :room_number))
  end

  def show
    @schoolClass = SchoolClass.find(params[:id])
  end

  def edit
    @schoolClass = SchoolClass.find(params[:id])
  end

  def update
    @schoolClass = SchoolClass.find(params[:id])
    @schoolClass.update(params.require(:school_class).permit(:title, :room_number))
    redirect_to cshool_class_path(@schoolClass)
  end
end
