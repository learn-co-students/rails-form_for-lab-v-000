class SchoolClassesController < ApplicationController

  def index
    @school_classes = SchoolClass.all
  end

  def new
    @school_class = SchoolClass.new
  end

  def show
    @school_class = SchoolClass.find_by(id: params[:id])
  end

  def create
    @school_class = SchoolClass.new(new_params(:title, :room_number))
    @school_class.save

    redirect_to school_class_path(@school_class)
  end

  def edit
    @school_class = SchoolClass.find_by(id: params[:id])
  end

  def update
    @school_class = SchoolClass.find_by(id: params[:id])
    @school_class.update(new_params(:title, :room_number))

    redirect_to school_class_path(@school_class)
  end

  private

  def new_params(*arg)
    params.require(:school_class).permit(*arg)
  end
end
