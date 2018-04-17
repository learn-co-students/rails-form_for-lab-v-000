class SchoolClassesController < ApplicationController
  
  def index
    @school_classes = SchoolClass.all
  end
  
  def new
    @school_class = SchoolClass.new
  end
  
  def create
    @school_class = SchoolClass.new(school_class_params(:title, :room_number))
    redirect_to school_class_path(@school_class) if !!@school_class.save
  end
  
  def show
    @school_class = SchoolClass.find_by(:id => params["id"])
  end
  
  def edit
    @school_class = SchoolClass.find_by(:id => params["id"])
  end
  
  def update
    @school_class = SchoolClass.update(params["id"], school_class_params(:title, :room_number))
    redirect_to school_class_path(@school_class)
  end
  
  private
  
  def school_class_params(*args)
    params.require(:school_class).permit(*args)
  end
end
