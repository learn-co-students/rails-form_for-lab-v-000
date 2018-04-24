class SchoolClassesController < ApplicationController

  def new
    @schoolclass = SchoolClass.new
  end

  def create
    @schoolclass = SchoolClass.create(params[:school_class])
    redirect_to school_class_path(@schoolclass)
  end

  def show
  end

  def edit
  end

  def update
  end

end
