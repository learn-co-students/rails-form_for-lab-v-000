class SchoolClassesController < ApplicationController

  def new
    @school_class = SchoolClass.new
  end

  def create
    @school_class = SchoolClass.create(strong_params)
    redirect_to school_class_path(@school_class)
  end

  def show
    @school_class = find_by_params
  end

  def edit
    @school_class = find_by_params
  end

  def update
    @school_class = find_by_params
    @school_class.update(strong_params)
    redirect_to school_class_path(@school_class)
  end

  private

  def find_by_params
    SchoolClass.find(params[:id])
  end

  def strong_params
    params.require(:school_class).permit(:title,:room_number)
  end

end
