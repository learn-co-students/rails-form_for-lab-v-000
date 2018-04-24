class SchoolClassesController < ApplicationController

  def new
  end

  def create
    @school = SchoolClass.create(params[:school_class])
    redirect_to school_class_path(@school)
  end

  def show
  end

  def edit
  end

  def update
  end

end
