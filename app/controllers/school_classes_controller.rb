class SchoolClassesController < ApplicationController
  def index
    @school_classes = SchoolClass.all
  end

  def show
    @school_class = SchoolClass.find(params[:id])
  end

  def new
  end

  def create
    @school_class = SchoolClass.new
    @school_class.title = params[:school_class_title]
    @school_class.room_number = params[:school_class_room_number]
    @school_class.save
    redirect_to school_class_path(@school_class)
  end

  def edit
    @school_class = SchoolClass.find(params[:id])
  end

  def update
    @school_class = SchoolClass.find(params[:id])
    @school_class.update(params[:school_class])
    redirect_to school_class_path(@school_class)
  end
end
