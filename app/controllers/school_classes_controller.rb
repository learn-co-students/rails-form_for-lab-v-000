class SchoolClassesController < ApplicationController

  def index
    @schoolClass = SchoolClass.all
  end

  def new
    @schoolClass = SchoolClass.new
  end

  def create
    @schoolClass = SchoolClass.create(params_strong(:title, :room_number))
    @schoolClass.save
    redirect_to school_class_path(@schoolClass)
  end

  def show
    @schoolClass = SchoolClass.find(params[:id])
  end

  def edit
    @schoolClass = SchoolClass.find(params[:id])
  end

  def update
    @schoolClass = SchoolClass.find(params[:id])
    @schoolClass.update(params_strong(:title, :room_number))
    redirect_to school_class_path(@schoolClass)
  end

  private

  def params_strong(*args)
    params.require(:school_class).permit(*args)
  end

end
