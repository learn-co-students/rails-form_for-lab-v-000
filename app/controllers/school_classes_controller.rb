class SchoolClassesController < ApplicationController

  def index
    @classes=SchoolClass.all
  end

  def new
    @class=SchoolClass.new
  end

  def show
    @class=SchoolClass.find(params[:id])
  end

  def create
    @class=SchoolClass.create(class_params)
    redirect_to school_class_path(@class)
  end

  def edit
    @class=SchoolClass.find(params[:id])
  end

  def update

    @class=SchoolClass.find(params[:id])
    @class.update(class_params)
    redirect_to school_class_path
  end

  private
    def class_params
      params.require(:school_class).permit(:title, :room_number)
    end

end