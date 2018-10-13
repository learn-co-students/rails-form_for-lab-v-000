class SchoolClassesController < ApplicationController

  def new
    @schoolclass = SchoolClass.new
  end

  def create

  end

  def index
    @schoolclasses = SchoolClasses.all
  end

  def show
    @schoolclass = SchoolClasses.find(params[:id])
  end

  def update

  end

  def edit

  end

end
