class SchoolClassesController < ApplicationController

  def create
    @school_class = SchoolClass.create(params[:school_class])
    redirect_to school_class_path(@school_class)
  end

  def new
  end

  def edit
    find_school_class
  end

  def show
    find_school_class
  end

  def update
    find_school_class
    @school_class.update(params[:school_class])
    redirect_to school_class_path(@school_class)
  end

  def find_school_class
    @school_class = SchoolClass.find(params[:id])
  end

end
