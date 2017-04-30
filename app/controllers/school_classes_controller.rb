class SchoolClassesController < ApplicationController

  def new
    @school_class = SchoolClass.new
  end

  def update
    @school_class = SchoolClass.find_by_id(params[:id])
    @school_class.update(school_classes_params)
    redirect_to @school_class
  end

  def index

  end

  def edit
    @school_class = SchoolClass.find_by_id(params[:id])
  end

  def show
    @school_class = SchoolClass.find_by_id(params[:id])
  end

  def create
    @school_class = SchoolClass.create(school_classes_params)
    redirect_to @school_class
  end

  private

    def school_classes_params
      params.require(:school_class).permit(:title, :room_number)
    end

end
