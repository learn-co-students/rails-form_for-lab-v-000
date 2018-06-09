class SchoolClassesController < ApplicationController

  def index
    @school_classes = SchoolClass.all
  end

  def show
    @school_class = SchoolClass.find(param[:id])
  end

  def new
    @school_class = SchoolClass.new
  end

  def create
    @school_class = SchoolClass.new(params.require(:schoool_class).permit(:title, :room_number))
    @school_class.save
    redirect_to school_class.path(@school_class)
  end

  def update
    @school_class = SchoolClass.find(params[:id])
    @school_class.update(schoolclass_params)
    redirect_to school_class.path(@school_class)
  end

  def edit
    @school_class = SchoolClass.find(params[:id])
  end

  private

  def schoolclass_params(*args)
    params.require(:student).permit(*args)
  end
end
