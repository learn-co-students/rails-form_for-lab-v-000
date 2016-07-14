class SchoolClassesController < ApplicationController

  def new
    @school_class = SchoolClass.new
  end

  def create
    @school_class = SchoolClass.create(post_params(:school_class, :title, :room_number))
    redirect_to school_class_path(@school_class)
  end

  def show
    find_school_class
  end

  def edit
    find_school_class
  end

  def update
    find_school_class.update(post_params(:school_class, :title, :room_number))
    redirect_to(find_school_class)
  end

  private 

  def find_school_class
    @school_class = SchoolClass.find(params[:id])
  end

end