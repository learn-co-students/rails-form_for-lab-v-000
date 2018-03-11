class SchoolClassesController < ApplicationController
  def index
    @class = SchoolClass.all
  end

  def show
    @class = SchoolClass.find(params[:id])
  end
  
  def new
    @class = SchoolClass.new
  end
  
  def create
		@class = SchoolClass.new(params.require(:school_class))
	  @class.save
	  redirect_to school_class_path(@class)
  end

  def update
    @class = SchoolClass.find(params[:id])
    @class.update(school_class_params(:title, :room_number))
    redirect_to school_class_path(@class)
  end

  def edit
    @class = SchoolClass.find(params[:id])
  end

  private
    def school_class_params(*args)
      params.require(:school_class).permit(:title, :room_number)
    end
end


