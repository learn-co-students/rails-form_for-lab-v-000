require 'pry'

class SchoolClassesController < ApplicationController
  def new
    @school_class = SchoolClass.new
  end

  def create
    @school_class = SchoolClass.new(school_class_params)
    @school_class.save
    redirect_to school_class_path(@school_class)
  end

  def show
    find_school_class
  end

  def edit
    find_school_class
  end

  def update
    find_school_class
    @school_class.update(school_class_params)
    redirect_to school_class_path(@school_class)
  end

  private

  def school_class_params
    params.require(:school_class).permit(:title, :room_number)
  end

  def find_school_class
    @school_class = SchoolClass.find(params[:id])
  end
end
