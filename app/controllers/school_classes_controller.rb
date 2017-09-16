class SchoolClassesController < ApplicationController
  before_action :load_school_class, only: [:show, :update, :edit]

  def index
    @school_classes = SchoolClass.all
  end

  def show
  end

  def new
    @school_class = SchoolClass.new
  end

  def create
    @school_class = SchoolClass.new(school_class_params)
    if @school_class.save
      redirect_to school_class_path(@school_class)
    else
      redirect_to new_school_class_path
    end
  end

  def edit
  end

  def update
    if @school_class.update(school_class_params)
      redirect_to school_class_path(@school_class)
    else
      redirect_to edit_school_class_path(@school_class)
    end
  end

  private

  def school_class_params
    params.require(:school_class).permit(:title, :room_number)
  end

  def load_school_class
    @school_class = SchoolClass.find(params[:id])
  end
end
