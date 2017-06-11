class SchoolClassesController < ApplicationController

  def new
    @school_class = SchoolClass.new
  end
  def create
    @school_class = SchoolClass.new(params.require(:school_class).permit(:title, :room_number))
    @school_class.save
    redirect_to school_class_path(@school_class)
  end

  # def create
  #   @school_class = SchoolClass.new
  #   @school_class.title = params[:school_class_title]
  #   @school_class.room_number = params[:school_class_room_number]
  #   @school_class.save
  #   redirect_to school_class_path(@school_class)
  # end
  def show
    @school_class = SchoolClass.find(params[:id])
  end
  def edit
		@school_class = SchoolClass.find(params[:id])
	end

  # def update
  #   @school_class = SchoolClass.find(params[:id])
  #   @school_class.update(title: params[:title], room_number: params[:room_number])
  #   redirect_to school_class_path(@school_class)
  # end
  def update
    @school_class = SchoolClass.find(params[:id])
    @school_class.update(params.require(:school_class).permit(:title))
    redirect_to school_class_path(@school_class)
  end
end
