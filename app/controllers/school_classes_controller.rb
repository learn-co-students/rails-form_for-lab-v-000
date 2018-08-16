
class SchoolClassesController < ApplicationController
  before_action :find_school_class, only: [:show, :update, :edit]

  def show
  end
  
  def new
    @schoolclass = SchoolClass.new
  end
  
  def create
    @schoolclass = SchoolClass.new(school_class_params(:title, :room_number))
    @schoolclass.save
    redirect_to schoolclass_path(@schoolclass)
  end
  
  def update
    @schoolclass.update(school_class_params(:title, :room_number))
    redirect_to schoolclass_path(@schoolclass)
  end
  
  def edit
  end
  
  private
  
    def find_school_class
      @schoolclass = SchoolClass.find(params[:id])
    end
  
    def school_class_params(*args)
      params.require(:school_class).permit(*args)
    end

end