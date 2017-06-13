class SchoolClassesController < ApplicationController

  def new
  end

  def create
    @school_class.create(params.require(:school_class)
    redirect_to school_class_path(@school_class)
  end

  def show
    @school_class = SchoolClass.find(params[:id])
  end

  def edit
  end

  def update
  end

end
