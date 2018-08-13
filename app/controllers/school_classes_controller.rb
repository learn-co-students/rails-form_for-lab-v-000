require 'pry'
class SchoolClassesController < ApplicationController

  def show
    @school_class = SchoolClass.find(params[:id])
  end

  def edit
    @school_class = SchoolClass.find(params[:id])
  end

  def new
    @school_class = SchoolClass.new
  end

  def create
    @school_class = SchoolClass.new(sc_params(:title, :room_number))
    @school_class.save
    redirect_to school_class_path(@school_class)
  end

  def update
    @school_class = SchoolClass.find(params[:id])
    @school_class.update(sc_params(:title, :room_number))
    redirect_to school_class_path(@school_class)
  end

  private

  def sc_params(*args)
    params.require(:school_class).permit(*args)
  end
end
