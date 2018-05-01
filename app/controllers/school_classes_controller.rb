class SchoolClassesController < ApplicationController

  def index
    @school_classes = SchoolClasses.all
  end

  def new
  end

  def create
    @school_class = SchoolClass.new(school_class_params(:title, :room_number))
    @school_class.save
    redirect_to school_classes_path(@school_class)
  end

  def edit
  end

  def update
    @school_class = SchoolClass.find(params[:id])
    @school_class.update(school_class_params(:title, :room_number))
    redirect_to school_classes_path(@school_class)
  end

  private

  def school_class_params(*args)
    params.require(:school_class).permit(*args)
  end

end
