class SchoolClassesController < ApplicationController
  def show
    @school_class = SchoolClass.find(params[:id])
  end

  def create
    @school_class = SchoolClass.create(post_params(:title, :room_number))
    redirect_to school_class_path(@school_class)
  end

  def new
    @school_class = SchoolClass.new
  end

  def update
    @school_class = SchoolClass.find(params[:id])
    @school_class.update(post_params(:title, :room_number))
    redirect_to school_class_path(@school_class)
  end

  def edit
    @school_class = SchoolClass.find(params[:id])
  end

  private

  def post_params(*args)
    params.require(:school_class).permit(*args)
  end
end