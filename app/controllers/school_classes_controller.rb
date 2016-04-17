class SchoolClassesController < ApplicationController
  def index
    @school_classes = SchoolClass.all
  end

  def new
    @new_class = SchoolClass.new
  end

  def create
    @new_class = SchoolClass.new(post_params)
    @new_class.save
    redirect_to school_class_path(@new_class)
  end

  def show
    @school_class = SchoolClass.find(params[:id])
  end

  def edit
    @school_class = SchoolClass.find(params[:id])
  end

  def update
    @school_class = SchoolClass.find(params[:id])
    @school_class.update(post_params)
    redirect_to school_class_path(@school_class)
  end

  private
    def post_params
      params.require(:school_class).permit(:title,:room_number)
    end


end
