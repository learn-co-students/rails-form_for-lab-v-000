class SchoolClassesController < ApplicationController

  def index
  end

  def new
    @class = SchoolClass.new
  end

  def create
    @class = SchoolClass.create(school_class_params)
    @class.update(school_class_params)
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

  def delete
  end

  private

  def school_class_params
    params.require(:school_class).permit(:title, :room_number)
  end

end
