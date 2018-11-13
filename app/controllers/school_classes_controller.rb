class SchoolClassesController < ApplicationController
  def index
    @classes = SchoolClasses.all
  end

  def show
    @school_class = SchoolClasses.find(params[:id])
  end

  def new
    @school_class = SchoolClasses.new
  end

  def create

  end

  def edit
  end

end
