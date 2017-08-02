class SchoolClassesController < ApplicationController

  def show
    get_school_class
  end

  def new
    @school_class = SchoolClass.new
  end

  def create
    @school_class = SchoolClass.create(school_class_params)
    redirect_to @school_class
  end

  def edit
    get_school_class
  end

  def update
    get_school_class
    @school_class.update(school_class_params)
    redirect_to @school_class
  end

  private

    def get_school_class
      @school_class = SchoolClass.find(params[:id])
    end

    def school_class_params
      params.require(:school_class).permit(:title, :room_number)
    end

end
