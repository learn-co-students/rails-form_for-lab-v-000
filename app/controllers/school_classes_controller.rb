class SchoolClassesController < ApplicationController
  before_action :set_params, only: [:show, :edit, :update]
  def index
    @school_classes = SchoolClass.all
  end
  def new
    @school_class = SchoolClass.new
  end
  def create
    @school_class = SchoolClass.create(school_params)
    redirect_to school_class_path(@school_class)
  end
  def edit

  end
  def update
    @school_class.update(school_params)
    redirect_to school_class_path(@school_class)
  end
  def show

  end


  private
  def school_params
    params.require(:school_class).permit(:title, :room_number)
  end
  def set_params
    @school_class = SchoolClass.find(params[:id])
  end
end
