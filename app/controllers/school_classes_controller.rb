class SchoolClassesController < ApplicationController
  before_action :set_school_class, only: :show
#Build out the new, create, show, edit, and update actions in each of the controllers.
  def new
    @school_class = SchoolClass.new
  end

  def create
    @school_class = SchoolClass.new(params.require(:school_class).permit(:title, :room_number))
    #@school_class = SchoolClass.new(params.require(:school_class)
    #@school_class = school_class.new(school_class_params(:title, :room_number))
    @school_class.save
    redirect_to school_class_path(@school_class)

  end

  def show
    @school_class = SchoolClass.find(params[:id])
  end

  def edit
    @school_class = SchoolClass.find(params[:id])
  end

  def update
    @school_class = SchoolClass.find(params[:id])
    @school_class.update(params.require(:school_class).permit(:title, :room_number))
    #@school_class.update(params.require(:school_class))
    redirect_to school_class_path(@school_class)
  end

private

  # We pass the permitted fields in as *args;
  # this keeps `post_params` pretty dry while
  # still allowing slightly different behavior
  # depending on the controller action
  def school_class_params(*args)
    params.require(:school_class).permit(*args)
  end

  def set_school_class
    @school_class = SchoolClass.find(params[:id])
  end
end
