class SchoolClassesController < ApplicationController
  def show 
    @school_class = SchoolClass.find(params[:id])
  end

  def new
    @school_class = SchoolClass.new
  end 

  def create
    @school_class = SchoolClass.new(school_classes_params(:title, :room_number))
    @school_class.save
    redirect_to school_class_path(@school_class)
  end

  private

  def school_classes_params(*args)
    params.require(:school_class).permit(*args)
  end
end
