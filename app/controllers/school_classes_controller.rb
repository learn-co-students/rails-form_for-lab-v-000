class SchoolClassesController < ApplicationController

  def new
  end

  def create
    sclass = SchoolClass.new(school_params(:title, :room_number))
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
    sclass.update(school_params(:title, :room_number))
    redirect_to school_class_path sclass
  end

  private
  def school_params(*args)
    params.require(:school_class).permit(*args)
  end
end
