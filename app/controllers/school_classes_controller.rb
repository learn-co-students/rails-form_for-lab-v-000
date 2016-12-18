class SchoolClassesController < ApplicationController

  def new
  end

  def create
    @school_class = SchoolClass.create(params.require(:school_class).permit(:title, :room_number))
    redirect_to school_class_path(@school_class)
  end

  def edit
    @schoolclass = SchoolClass.find_by(id: params[:id])
  end

  def update
    @schoolclass = SchoolClass.find_by(id: params[:id])
    @schoolclass.update(params.require(:school_class).permit(:title, :room_number))
    redirect_to school_class_path(@schoolclass)
  end

  def show
    @school_class = SchoolClass.find_by(id: params[:id])
  end

end
