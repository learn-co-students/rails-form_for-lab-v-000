class SchoolClassesController < ApplicationController
  def new
    @school_class = SchoolClass.new
  end

  def create
    @school_class = SchoolClass.create(class_params(:title, :room_number))
    redirect_to school_class_path(@school_class)
  end

  def show
    @school_class = SchoolClass.find_by_id(params[:id])
  end

  def edit
    @school_class = SchoolClass.find_by_id(params[:id])
  end

  def update
    # binding.pry
    @school_class = SchoolClass.find_by_id(params[:id])
    @school_class.update(class_params(:title, :room_number))
    redirect_to school_class_path(@school_class)
  end
end