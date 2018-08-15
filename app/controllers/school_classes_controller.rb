class SchoolClassesController < ApplicationController
  before_action :set_school_class, only: [:show, :edit, :update, :destroy]

  def index
    @school_classes = SchoolClass.all
  end

  def new
    @school_class = SchoolClass.new
  end

  def create
    @school_class = SchoolClass.new(school_class_params(:title, :room_number))
    @school_class.save

    redirect_to school_class_path(@school_class)
  end

  def show

  end

  def edit
  end

  def update
    @school_class.update(school_class_params(:title, :room_number))

    redirect_to school_class_path(@school_class)
  end

  def destroy
  end

  private

  def school_class_params(*args)
    params.require(:school_class).permit(*args)
  end

  def set_school_class

  @school_class = SchoolClass.find(params[:id])

  end
end
