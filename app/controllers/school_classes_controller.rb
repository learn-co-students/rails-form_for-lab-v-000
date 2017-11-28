class SchoolClassesController < ApplicationController
  def new
    @new_school_class = SchoolClass.new
  end

  def show
    @school_class = SchoolClass.find(params[:id])
  end

  def edit
    @edit_school_class = SchoolClass.find(params[:id])
  end

  def create
    school_class = SchoolClass.create(school_class_params(:title, :room_number))
    redirect_to school_class_path(school_class)
  end

  def update
    update_school_class = SchoolClass.find(params[:id])
    update_school_class.update(school_class_params(:title, :room_number))
    redirect_to school_class_path(update_school_class)
  end

  private
    def school_class_params(*args)
      params.require(:school_class).permit(*args)
    end
end