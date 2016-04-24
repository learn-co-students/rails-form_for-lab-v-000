class SchoolClassesController < ApplicationController
  def index
    @school_classes = SchoolClass.all
  end

  def new
    @school_class = SchoolClass.new
  end

  def create
    @school_class = SchoolClass.create(school_class_params)
    redirect_to school_class_path(@school_class)
  end

  def show
    @school_class = find
  end

  def edit
    @school_class = find
  end

  def update
    @school_class = find
    @school_class.update(school_class_params)
    redirect_to school_class_path(@school_class)
  end

  private
    def find
      SchoolClass.find(params[:id])
    end

    def school_class_params
      params.require(:school_class).permit(:title, :room_number)
    end
end