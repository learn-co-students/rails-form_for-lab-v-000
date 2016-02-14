class SchoolClassesController < ApplicationController
  def index
    @school_classes = SchoolClass.all
  end

  def show
    @school_class = SchoolClass.find(params[:id])
  end

  def new
    @school_class = SchoolClass.new
  end

  def create
    @school_class = SchoolClass.new(schoolclass_params)
    @school_class.save
    redirect_to @school_class
  end
   
  def update
    @school_class = SchoolClass.find(params[:id])
    @school_class.update(Schoolclass_params)
    redirect_to @schoolclass
  end
   

  def edit
    @school_class = SchoolClass.find(params[:id])
  end

  private
   
    def schoolclass_params
      params.require(:school_class).permit(:title, :room_number)
    end
end
