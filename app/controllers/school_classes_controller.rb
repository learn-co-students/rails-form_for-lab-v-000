class SchoolClassesController < ApplicationController

  # Create
  def new
    @school_class = SchoolClass.new
  end

  def create
    @school_class = SchoolClass.new(school_class_params)
    @school_class.save
    redirect_to school_class_path(@school_class)
  end

  # Read
  def show
    @school_class = SchoolClass.find(params[:id])
  end

  # Update
  def edit
    @school_class = SchoolClass.find(params[:id])
  end

  def update
    @school_class = SchoolClass.find(params[:id])
    @school_class.update(school_class_params)
    redirect_to school_class_path(@school_class)
  end

  # Destroy
  def destroy
  end

  # Form Params
  private

  def school_class_params
    params.require(:school_class)
  end
end
