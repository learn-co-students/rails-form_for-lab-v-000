class SchoolClassesController < ApplicationController


  def index
    @school_classes = SchoolClass.all
  end

  def new
    @school_class = SchoolClass.new
  end

  def show
    @school_class = SchoolClass.find(params[:id]);
  end

  def create
    @new_school_class = SchoolClass.create(strong_params(:title, :room_number))
    redirect_to school_class_path(@new_school_class)
  end

  def edit
    @school_class = SchoolClass.find(params[:id])
  end

  def update
    @new_school_class = SchoolClass.find(params[:id])
    @new_school_class.update( strong_params(:title, :room_number))
    redirect_to school_class_path(@new_school_class)
  end

  private

    def strong_params(*args)
      params.require(:school_class).permit(*args)
    end
end
