class SchoolClassesController < ApplicationController 
  def new 
  end

  def create 
    @school_class = SchoolClass.create(post_params)
    @school_class.save 
    redirect_to school_class_path(@school_class)
  end

  def show 
  end

  def edit 
  end
  
  def update 
  end
private
  def post_params 
    params.require(:school_class).permit(:room_number, :title)
  end
end