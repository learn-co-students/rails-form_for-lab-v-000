class SchoolClassesController < ApplicationController

  def index
    @school_classs = SchoolClass.all
  end

  def new
    @school_class = SchoolClass.new
  end

  def create
    @school_class = SchoolClass.new(params.require(:school_class).permit(:title, :room_number))
    @school_class.save
    redirect_to school_class_path(@school_class)
  end

  def show
    @school_class = SchoolClass.find(params[:id])
  end

  def edit
    @school_class = SchoolClass.find(params[:id])
  end

  def update
    @school_class =  SchoolClass.find(params[:id])
    @school_class.update(post_params)
    redirect_to school_class_path(@school_class)
  end

  def delete
  end

  private

  def post_params
    params.require(:school_class).permit(:title, :room_number)
  end
end
