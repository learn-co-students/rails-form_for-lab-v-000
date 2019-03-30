class SchoolClassesController < ApplicationController
  def show
    set_school_class
  end

  def new
    @school_class = SchoolClass.new
  end

  def edit
    set_school_class
  end

  def create
    @school_class = SchoolClass.new(school_class_params(:title, :room_number))
    @school_class.save
    redirect_to school_class_path(@school_class)
  end

  def update
	  set_school_class
	  @school_class.update(school_class_params(:title, :room_number))
	  redirect_to school_class_path(@school_class)
	end

  private

  def school_class_params(*args)
    params.require(:school_class).permit(*args)
  end

  def set_school_class
    @school_class = SchoolClass.find(params[:id])
  end
end
