class SchoolClassesController < ApplicationController
  def index
    @sc = SchoolClass.all
  end

  def show
    @sc = SchoolClass.find(params[:id])
  end

  def new
    @sc = SchoolClass.new
  end

  def create
    @sc = SchoolClass.new(post_params(:title, :room_number))
    @sc.save
    redirect_to school_class_path(@sc)
  end

  def edit
    @sc = SchoolClass.find(params[:id])
  end

  def update
    @sc = SchoolClass.find(params[:id])
    @sc.update(post_params(:title, :room_number))
    redirect_to school_class_path(@sc)
  end

  private

  def post_params(*args)
    params.require(:school_class).permit(*args)
  end
end
