class SchoolClassesController < ApplicationController
  def show
    @school_class = SchoolClass.find(params[:id])
  end

  def create
    @school_class = SchoolClass.create(params_get(:title, :room_number))
    @school_class.save
    redirect_to school_class_path(@school_class)
  end

  def edit
    @school_class = SchoolClass.find(params[:id])
  end

  def update
   @school_class = SchoolClass.find(params[:id])
   @school_class.update(params_get(:title, :room_number))
   redirect_to school_class_path(@school_class)
  end

  def new
   @school_class = SchoolClass.new
  end

  private

  def params_get(*args)
    params.require(:school_class).permit(*args)
  end
end
