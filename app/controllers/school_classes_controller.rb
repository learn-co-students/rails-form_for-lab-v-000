class SchoolClassesController < ApplicationController

  def index
    @classes = SchoolClass.all
  end

  def new
    @class = SchoolClass.new(params[:school_class])
  end

  def create
    @class = SchoolClass.new(school_class_params)
    @class.save
    redirect_to school_class_path(@class)
  end

  def show
    @class = SchoolClass.find(params[:id])
  end

  def edit
    @class = SchoolClass.find(params[:id])
  end

  def update
    @class = SchoolClass.find(params[:id])
    @class.update(school_class_params)
    redirect_to school_class_path(@class)
  end

private

  def school_class_params
    params.require(:school_class).permit(:title,:room_number)
  end

end
