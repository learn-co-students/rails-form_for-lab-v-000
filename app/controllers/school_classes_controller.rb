class SchoolClassesController < ApplicationController
  def create
    school_class = SchoolClass.create(params.require(:school_class).permit(:title, :room_number))
    redirect_to school_class_path(school_class)
  end
  def new
    @school_class = SchoolClass.new
  end
  def show
    @school_class = SchoolClass.find_by_id(params[:id])
  end
  def edit
    @school_class = SchoolClass.find_by_id(params[:id])
  end
  def update
    school_class = SchoolClass.find_by_id(params[:id])
    school_class.update(params.require(:school_class).permit(:title, :room_number))
    redirect_to school_class_path(school_class)
  end
end
