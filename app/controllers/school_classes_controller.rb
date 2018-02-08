class SchoolClassesController < ApplicationController
  def index
  end

  def show
  end

  def new
  end

  def create
    @school_class=SchoolClass.new(school_class_params(:title, :room_number))
    @school_class.save
    redirect_to school_class_path(@school_class)
  end

  def update
  end

  def edit
  end

  private

  def school_class_params(*args)
    params.require(:school_class).permit(*args)
  end

end
