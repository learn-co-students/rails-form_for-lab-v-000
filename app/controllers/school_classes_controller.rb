class SchoolClassesController < ApplicationController
  def new
    @school_class = SchoolClass.new
  end

  def create
    school_class = SchoolClass.create(school_params)
    redirect_to school_class_path(school_class)
  end

  def show
    @school_class = SchoolClass.find(params[:id])
  end

  def edit
@school_class = SchoolClass.find(params[:id])
  end

  def update
    school_class = SchoolClass.find(params[:id])
    school_class.update(school_params)
     redirect_to school_class_path(school_class)
  end

  private
    def school_params
      params.require(:school_class).permit(:title, :room_number)
    end
end