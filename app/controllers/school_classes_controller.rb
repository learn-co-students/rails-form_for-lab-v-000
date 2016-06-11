class SchoolClassesController < ApplicationController
  before_filter :find_school_class, only: [:show, :edit, :update, :destroy]

  def index
    @school_class = @school_class.all
  end

  def show
    @school_class = SchoolClass.find_by(id: params[:id])
  end

  def new
    @school_class = SchoolClass.new
  end

  def create
    @school_class = SchoolClass.new(school_class_params)
    if @school_class.save
      redirect_to @school_class
    else
      render 'new'
    end
  end

  def edit
  end

  def update
    if @school_class.update(school_class_params)
      redirect_to @school_class
    else
      render 'edit'
    end
  end

  def destroy
    @school_class.destroy
    redirect_to school_class_index_path
  end

  private
  def school_class_params
    params.require(:school_class).permit(:title, :room_number)
  end

  def find_school_class
    @school_class = SchoolClass.find(params[:id])
  end

end
