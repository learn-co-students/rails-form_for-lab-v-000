class SchoolClassesController < ApplicationController
  def index
  end

  def show
    find_class
  end

  def new
    @class = SchoolClass.new
  end

  def create
    @class = SchoolClass.new(school_class_params)
    @class.save
    redirect_to school_class_path(@class)
  end

  def edit
    find_class
  end

  def update
    find_class
    @class.update(school_class_params)
    redirect_to school_class_path(@class)

  end

  private
    def school_class_params
      params.require(:school_class).permit(:title, :room_number)
    end

    def find_class
      @class = SchoolClass.find(params[:id])
    end


end