class SchoolClassesController < ApplicationController

  def create
    #binding.pry
    @school_class = SchoolClass.new
    @school_class.title = params[:school_class][:title]
    @school_class.room_number = params[:school_class][:room_number]
    @school_class.save
    redirect_to school_class_path(@school_class)
  end

  def show
    #binding.pry
    @school_class = SchoolClass.find(params[:id])
  end

  def new
    @school_class = SchoolClass.new
    #binding.pry
  end

  def edit
    #binding.pry
    @school_class = SchoolClass.find(params[:id])
  end

  def update
    #binding.pry
    @school_class = SchoolClass.find(params[:id])
    @school_class.update(params.require(:school_class))
    redirect_to school_class_path(@school_class)
  end

end
