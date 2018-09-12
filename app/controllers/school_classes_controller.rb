class SchoolClassesController < ApplicationController

  def new
  end

  def create
    @school_class = SchoolClass.new(params.require(:school_class))
    @school_class.save
  end

  def show
  end

  def edit

  end

  def update
  end

end
