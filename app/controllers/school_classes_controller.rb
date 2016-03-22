class SchoolClassesController < ApplicationController

  def show
    @school_class = current_school_class
  end

  def new
    @school_class = SchoolClass.new
  end

  def create
    @school_class = SchoolClass.create(params_path)
    redirect_to school_class_path(@school_class)
  end

  def edit
    @school_class = current_school_class
  end

  def update
    @school_class = current_school_class
    @school_class.update(params_path)
    redirect_to school_class_path(@school_class)
  end

  private

    def current_school_class
      SchoolClass.find(params[:id])
    end

    def params_path
      params.require(:school_class).permit(:title, :room_number)
    end

end