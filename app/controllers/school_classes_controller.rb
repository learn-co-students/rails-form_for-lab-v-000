class SchoolClassesController < ApplicationController

  def show
    @school_class = SchoolClass.find_by(id: params[:id])
  end

  def new
    @school_class = SchoolClass.new
  end

  def create
    @school_class = SchoolClass.new(school_class_params)
    redirect_to @school_class if @school_class.save
  end

  def edit
    @school_class = SchoolClass.find_by(id: params[:id])
  end

  def update
    @school_class = SchoolClass.find_by(id: params[:id])
    redirect_to @school_class if @school_class.update(school_class_params)
  end

  private

    def school_class_params
      params.require(:school_class).permit(:title, :room_number)
    end

end