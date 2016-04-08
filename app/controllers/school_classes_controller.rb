require 'pry'

class SchoolClassesController < ApplicationController

  def create
    @class = SchoolClass.create(params.require(:school_class).permit(:title, :room_number))
    redirect_to school_class_path(@class)
  end

  def new
    @class = SchoolClass.new
  end

  def show
    @class = SchoolClass.find(params[:id])  #Not DRY
  end

  def edit
    @class = SchoolClass.find(params[:id])   #NOT DRY
  end

  def update
    @class = SchoolClass.find(params[:id])
    @class.update(params[:school_class])
    redirect_to school_class_path
  end
end