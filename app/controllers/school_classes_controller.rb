class SchoolClassesController < ApplicationController
  def new
    @school_class = SchoolClass.new
  end

  def create
    if params[:school_class] != "" || params[:school_class] != nil
      if params[:room_number] != "" || params[:room_number] != nil
        @school_class = SchoolClass.create(params.require(:school_class).permit(:title, :room_number))
        @school_class.save
        redirect_to school_class_path(@school_class)
      end
    end
  end

  def show
    @school_class = SchoolClass.find(params[:id])
  end

  def edit
    @school_class = SchoolClass.find(params[:id])
  end

  def update
    @school_class = SchoolClass.find(params[:id])
    @school_class.update(params.require(:school_class))
    redirect_to school_class_path(@school_class)
  end
end
