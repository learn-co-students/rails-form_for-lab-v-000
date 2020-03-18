class SchoolClassesController < ApplicationController
  def new
    @school_class = SchoolClass.new
  end

  def create
    @school_class = SchoolClass.create(school_class_params)
    redirect_to school_class_url(@school_class)
  end

  def show
    @class = SchoolClass.find(params[:id])
  end

  def edit
    @school_class = SchoolClass.find(params[:id])
  end

  def update
    @school_class = SchoolClass.update(school_class_params)
    redirect_to school_class_url(@school_class)
  end

  private

  def school_class_params
    params.require(:school_class).permit(:title, :room_number)
  end
end
