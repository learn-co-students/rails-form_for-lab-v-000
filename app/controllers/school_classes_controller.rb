class SchoolClassesController < ApplicationController
  def index
    @school_classes = SchoolClass.all
  end

  def new
  end

  def create
    @school_class = SchoolClass.create(school_class_params(:title, :room_number))
    redirect_to school_class_path(@school_class)
  end

  def show
    @school_class = SchoolClass.find_by_id(params[:id])
  end

  def edit
    @school_class = SchoolClass.find_by_id(params[:id])
  end

  def update
    @school_class = SchoolClass.find_by_id(params[:id])
    @school_class.update(student_class_params(:title, :room_number))
    redirect_to school_class_path(@school_class)
  end

  def school_class_params(*args)
    params.require(:school_class).permit(*args)
  end

end
