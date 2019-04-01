class SchoolClassesController < ApplicationController 
  def new 
    @school_class = SchoolClass.new 
  end

  def create 
    @school_class = SchoolClass.create(post_params)
    redirect_to school_class_path(@school_class)
  end

  def show 
    @school_class = SchoolClass.find(params[:id])
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