class SchoolClassesController < ApplicationController
  def index
    @school_classes = SchoolClass.all
  end

  def create
    # byebug
    @school_class = SchoolClass.create(school_class_params)
    redirect_to school_class_path(@school_class)
  end

  def show
    @school_class = find_school_class(params)
  end

  def new
    @school_class = SchoolClass.new
  end

  def edit
    @school_class = find_school_class(params)
  end

  def update
    @school_class = find_school_class(params)
    @school_class.update(school_class_params)
    redirect_to school_class_path(@school_class)
  end

  private
  def find_school_class(params)
    SchoolClass.find(params[:id])
  end

  def school_class_params
    params.require(:school_class)
  end
end
