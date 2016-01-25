class SchoolClassesController < ApplicationController
  def index
  end

  def show
    @school_class = SchoolClass.find(params[:id])
  end

  def new
    @school_class = SchoolClass.new #for form_for
  end

  def create
    @school_class = SchoolClass.new(params.require(:school_class)) #strong params
    @school_class.save
    redirect_to school_class_path(@school_class)
  end

  def edit
    @school_class = SchoolClass.find(params[:id])
  end

  def update
    @school_class = SchoolClass.find(params[:id])
    @school_class.update(params.require(:school_class)) #strong params
    redirect_to school_class_path(@school_class)
  end
end