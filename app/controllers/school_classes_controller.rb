class SchoolClassesController < ApplicationController
  def index
    @school_classes = SchoolClass.all
  end

  def show
    the_class
  end

  def new
    @school_class = SchoolClass.new
  end

  def create
    # binding.pry
    @school_class = SchoolClass.new(param(:title, :room_number))
    @school_class.save
    redirect_to school_class_path(@school_class)
  end

  def edit
    the_class
  end

  def update
    the_class
    the_class.update(param(:title, :room_number))
    redirect_to school_class_path(the_class)
  end

  private

  def the_class
    @school_class = SchoolClass.find(params[:id])
  end

  def param(*arg)
    params.require(:school_class).permit(*arg)
  end
end
