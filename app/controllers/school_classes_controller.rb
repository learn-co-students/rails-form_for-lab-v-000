class SchoolClassesController < ApplicationController

  #get methods

  def index
    @classes = SchoolClass.all
  end

  def show
    @class = SchoolClass.find(params[:id])
  end

  def new
    @class = SchoolClass.new
  end

  def edit
    @class = SchoolClass.find(params[:id])
  end

  #post/patch methods

  def create
    @class = SchoolClass.create(classes_params(:title, :room_number))
    redirect_to school_class_path(@class)
  end

  def update
    @class = SchoolClass.find(params[:id])
    @class.update(classes_params(:title, :room_number))
    redirect_to school_class_path(@class)
  end


  private

  def classes_params(*args)
    params.require(:school_class).permit(*args)
  end


end
