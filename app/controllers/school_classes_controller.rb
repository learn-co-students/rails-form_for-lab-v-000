class SchoolClassesController < ApplicationController

  def new
  end

  def create
    @school_class.create(school_class_params(:title, :room_number))
    redirect_to school_class_path(@school_class)
  end

  def show
    @school_class = SchoolClass.find(params[:id])
  end

  def edit
    @school_class = SchoolClass.find(params[:id])
  end

  def update
    @school_class = SchoolClass.find(param[:id])
    @school_class.update(school_class_params(:title, :room_number))
  end

  private

  def school_class_params(*args)
    params.require(:school_class).permit(*args)
  end

end
