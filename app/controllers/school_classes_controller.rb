require 'pry'
class SchoolClassesController < ApplicationController
  def new
    @school_class = SchoolClass.new
  end

  def create

    @school_class = SchoolClass.new
    @school_class.title = params[:school_class][:title]
    @school_class.room_number = params[:school_class][:room_number]
    @school_class.save
    redirect_to school_class_path(@school_class)
  end

  def show
    @school_class = SchoolClass.find_by_id(params[:id])
  end

  def edit
    @school_class = SchoolClass.find_by_id(params[:id])
  end

  def update
    @school_class = SchoolClass.find_by_id(params[:id])
    @school_class.title = params[:school_class][:title]
    @school_class.room_number = params[:school_class][:room_number]
    @school_class.save
    redirect_to school_class_path(@school_class)
  end
end
