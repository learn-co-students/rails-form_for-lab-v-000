class SchoolClassesController < ApplicationController

  def new
      @school_class = SchoolClass.new
  end

  def create
    # @school_class = SchoolClass.new(schoolclass_params)
    # @school_class.title = schoolclass_params[:title]
    # @school_class.room_number = schoolclass_params[:room_number]
    # @school_class.save
    @school_class = SchoolClass.create(schoolclass_params)
    redirect_to school_class_path(@school_class)
  end

  def index
    @school_classes = SchoolClass.all
  end

  def show
    @school_class = SchoolClass.find(params[:id])
  end

  def edit
    @school_class = SchoolClass.find(params[:id])
  end

  def update
    @school_class = SchoolClass.find(params[:id])
    @school_class.update(schoolclass_params)
    redirect_to school_class_path(@school_class)
  end

  private

  def schoolclass_params
    params.require(:school_class).permit(:title, :room_number)
  end

end
