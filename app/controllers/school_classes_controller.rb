class SchoolClassesController < ApplicationController
  before_action :set_school_class, only: [:show, :edit, :update]

  #def show
  #end

  #def edit
  #end

  def new
    @school_class = SchoolClass.new
  end

  def create
    @school_class = SchoolClass.create(school_class_params(:title, :room_number))
    redirect_to_show
  end

  def update
    @school_class.update(school_class_params(:title, :room_number))
    redirect_to_show
  end

  private

  def set_school_class
    @school_class = SchoolClass.find(params[:id])
  end

  def school_class_params(*args)
    params.require(:school_class).permit(*args)
  end

  def redirect_to_show
    redirect_to school_class_path(@school_class)
  end

end
