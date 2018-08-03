class SchoolClassesController < ApplicationController
  
  def index
    @school_classes = SchoolClass.all
  end
  
  def new
    @school_class = SchoolClass.new
  end
  
  def create
   @school_class = SchoolClass.new(school_class_params(:title, :room_number))
   @school_class.save
   redirect_to school_class_path(@school_class)
  end
  
  def edit
    @school_class = set_school_class
  end
  
  def update
    @school_class = set_school_class
    @school_class.update(school_class_params(:title, :room_number))
    redirect_to school_class_path(@school_class)
  end
  
  def show
    @school_class = set_school_class
  end
  
private

  def set_school_class
    SchoolClass.find_by_id(params[:id])
  end
  
  def school_class_params(*args)
    params.require(:school_class).permit(*args)
  end

  
end