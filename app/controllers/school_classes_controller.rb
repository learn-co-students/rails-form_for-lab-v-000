class SchoolClassesController < ApplicationController

  def index
    @school_classes = SchoolClass.all
    # renders a index page
  end

  def show
    @school_class = SchoolClass.find(params[:id])
    # renders a show page
  end

  def new
    @school_class = SchoolClass.new
    # renders a create page
  end

  def create
     @school_class = SchoolClass.create(school_class_params)
     redirect_to school_class_path(@school_class)
     # routes to show page
  end

  def edit
    @school_class = SchoolClass.find(params[:id])
    # renders a update page
  end

  def update
    @school_class = SchoolClass.find(params[:id])
    @school_class.update(school_class_params)
    redirect_to school_class_path(@school_class)
    # routes to show page
  end

  private

  def school_class_params
    params.require(:school_class)
  end
end
