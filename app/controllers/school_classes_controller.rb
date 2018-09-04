class SchoolClassesController < ApplicationController
  
  def show 
    class_find
  end
  
  def new 
    @school_class = SchoolClass.new
  end
  
  def create 
    @school_class = SchoolClass.create!(class_params(:title, :room_number))
    redirect_to @school_class
  end
  
  def edit 
    class_find
  end 
  
  def update 
    class_find
    @school_class.update(class_params(:title, :room_number))
    redirect_to @school_class
  end
  
  private
  
  def class_params(*args)
    params.require(:school_class).permit(*args)
  end
  
  def class_find
    @school_class = SchoolClass.find(params[:id])
  end
end