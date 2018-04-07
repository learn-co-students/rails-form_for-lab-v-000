class SchoolClassesController < ApplicationController

  def new
    @school_class = SchoolClass.new
  end

  def create
    @school_class = SchoolClass.new(school_class_params)
    @school_class.save
    redirect_to @school_class
  end

  def show
    set_school_class
  end

  def edit
    set_school_class
  end

  def update
    set_school_class
    set_school_class.update(school_class_params)
    redirect_to set_school_class
  end

  private
  def set_school_class
    @school_class = SchoolClass.find(params[:id])
  end

  def school_class_params
    params.require(:school_class).permit(:title, :room_number)
  end
end
