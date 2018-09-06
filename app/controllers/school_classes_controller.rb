class School_classesController < ApplicationController


  def show
    @school_class = School_class.find(params[:id])
  end

  def new
    @school_class = School_class.new
  end

  def create
    @school_class = School_class.new
    @school_class.title = params[:title]
    @school_class.room_number = params[:room_number]
    @school_class.save
    redirect_to school_class_path(@school_class)
  end

  # add edit and update methods here

  def edit
    @school_class = School_class.find(params[:id])
  end

  def update
    @school_class = School_class.find(params[:id])
    @school_class.update(title: params[:title], room_number: params[:room_number])
    redirect_to school_class_path(@school_class)
  end
end
