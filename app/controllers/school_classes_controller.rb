class SchoolClassesController < ApplicationController

  def index
    @school_classes = SchoolClass.all
  end

  def show
    @school_class = current_class
  end

  def create
    @school_class = SchoolClass.create(class_params(:title, :room_number))
    redirect_to school_class_path(@school_class)
  end

  def new
    @school_class = SchoolClass.new
  end

  def edit
    @school_class = current_class
  end

  def update
    @school_class = current_class
    @school_class.update(class_params(:title, :room_number))
    redirect_to school_class_path(@school_class)
  end

  private

    def current_class
      SchoolClass.find(params[:id])
    end

    def class_params(*args)
      params.require(:school_class).permit(*args)
    end

end
