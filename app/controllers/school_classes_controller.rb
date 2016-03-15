class SchoolClassesController < ApplicationController

  before_action :find_class, only: [:show, :edit, :update]

  def show
  end

  def new
    @school_class = SchoolClass.new
  end

  def create
    @school_class = SchoolClass.new(school_params)
    @school_class.save
    redirect_to school_class_path(@school_class)
  end

  def edit
  end

  def update
    @school_class.update(school_params)
    redirect_to school_class_path(@school_class)
  end

  private

  def find_class
    @school_class = SchoolClass.find(params[:id])
  end

  def school_params
    params.require(:school_class).permit(:title, :room_number)
  end

end
