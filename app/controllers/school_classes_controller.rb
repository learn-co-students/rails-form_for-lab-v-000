class SchoolClassesController < ApplicationController
  def new
  end

  def index
  end

  def show
    find_class
  end

  def create
    @school_class = SchoolClass.create(pass_params)

    redirect_to school_class_path(@school_class)
  end

  def update
    find_class
    @school_class.update(pass_params)

    redirect_to school_class_path(@school_class)
  end

  def edit
    find_class
  end

  private

  def find_class
    @school_class = SchoolClass.find(params[:id])
  end

  def pass_params
    params.require(:school_class).permit(:title, :room_number)
  end
end
