class SchoolClassesController < ApplicationController
  def new
    @schoolclass = SchoolClass.new
  end

  def create
    @schoolclass = SchoolClass.new(schoolclass_params(:title, :room_number))
    @schoolclass.save
    redirect_to school_class_path(@schoolclass)
  end

  def show
    @schoolclass = SchoolClass.find(params[:id])
  end

  def edit
    @schoolclass = SchoolClass.find(params[:id])
  end

  def update
    @schoolclass = SchoolClass.find(params[:id])
    @schoolclass.update(schoolclass_params(:title, :room_number))
    redirect_to school_class_path(@schoolclass)
  end

  private

  def schoolclass_params(*args)
    params.require(:school_class).permit(*args)
  end
end
