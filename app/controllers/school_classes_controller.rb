class SchoolClassesController < ApplicationController
  def index
    @classes = SchoolClass.all
  end

  def new
    @class = SchoolClass.new
  end

  def show
    @class = SchoolClass.find(params[:id])
  end

  def create
    @class = SchoolClass.new(school_classes_params)
    @class.save
    redirect_to school_class_path(@class)
  end

  def edit
    @class = SchoolClass.find(params[:id])
  end

  def update
    @class = SchoolClass.find(params[:id])
    @class.update(school_classes_params)
    redirect_to school_class_path(@class)
  end

  def school_classes_params
    params.require(:school_class).permit(:title, :room_number)
  end
end
