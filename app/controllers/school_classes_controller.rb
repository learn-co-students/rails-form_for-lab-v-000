class SchoolClassesController < ApplicationController

  def new
    @school_class = SchoolClasses.new
  end

  def create
    @school_class = SchoolClass.create(params.require(:school_class).permit(:title, :room_number))
    redirect_to school_class_path(@school_class)
  end

  def show
    @school_class = SchoolClass.find(params[:id])
  end

  def edit
  end

  def update
  end

end
