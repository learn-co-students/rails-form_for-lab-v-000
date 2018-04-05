class SchoolClassesController < ApplicationController
  def new
    @school_class=SchoolClass.new
    #do we need anything here?
  end
  def edit
    @school_class= SchoolClass.find(params[:id])
  end
  def show
    @school_class= SchoolClass.find(params[:id])
  end
  def create
    @school_class= SchoolClass.new(params.require(:school_class))
    @school_class.save
    redirect_to school_class_path(@school_class)
  end
  def update
    @school_class= SchoolClass.find(params[:id])
    @school_class.update(params.require(:school_class))
    redirect_to school_class_path(@school_class)
  end
end
