class SchoolClassesController < ApplicationController
  def index
    @classes = SchoolClass.all
  end

  def show
    @class = SchoolClass.find(params[:id])
  end

  def new
    @class = SchoolClass.new
  end

  def create
    @class = SchoolClass.new
    @class.title = params.require(:school_class)[:title]
    @class.room_number = params.require(:school_class)[:room_number]
    @class.save
    redirect_to school_class_path(@class)
  end

  def edit
    @class = SchoolClass.find(params[:id])
  end

  def update
    @class = SchoolClass.find(params[:id])
    @class.update(params.require(:school_class))
    redirect_to school_class_path(@class)
  end
end
