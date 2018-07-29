class SchoolClassesController < ApplicationController

  def new
    @school_class = SchoolClass.new
  end

  def create
    @school_class = SchoolClass.new(post_params(:title, :room_number))
    @school_class.save
    redirect_to school_class_path(@school_class)
  end

  def show
    find_class
  end

  def edit
    find_class
  end

  def update
    find_class
    find_class.update(post_params(:title, :room_number))
    redirect_to school_class_path
  end

# PRIVATE HELPERS
  private

  def post_params(*args)
    params.require(:school_class).permit(*args)
  end

  def find_class
    @school_class = SchoolClass.find(params[:id])
  end

end
