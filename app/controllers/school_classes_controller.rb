class SchoolClassesController < ApplicationController

  def new
    @school_class = SchoolClass.new
  end

  def create
    @school_class = SchoolClass.new(params.require(:school_class))
    @school_class.save
    redirect_to school_class_path(@school_class)
  end

  def show
    find_id
  end

  def edit
    find_id
  end

  def update
    find_id
    @school_class.update(params.require(:school_class))
    redirect_to school_class_path(@school_class)
  end

  def find_id
    @school_class = SchoolClass.find(params[:id])
  end


end
