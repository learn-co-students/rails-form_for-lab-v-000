
class SchoolClassesController < ApplicationController
  before_action :find_schoolclass, only: [:show, :update, :edit]
  
  def index
    @schoolclass = SchoolClass.all
  end
  
  def show
  end
  
  def new
    @schoolclass = SchoolClass.new
  end
  
  def create
    @schoolclass = SchoolClass.new(schoolclass_params(:school_class_title, :school_class_room_number))
    @schoolclass.save
    redirect_to schoolclass_path(@schoolclass)
  end
  
  def update
    @schoolclass.update(schoolclass_params(:school_class_title, :school_class_room_number))
    redirect_to schoolclass_path(@schoolclass)
  end
  
  def edit
  end
  
  private
  
    def find_schoolclass
      @schoolclass = SchoolClass.find(params[:id])
    end
  
    def schoolclass_params(*args)
      params.require(:schoolclass).permit(*args)
    end

end