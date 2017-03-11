class SchoolClassesController < ApplicationController

  def show
    # binding.pry
    @school_class = SchoolClass.find(params[:id])
  end

  def new
    @school_class = SchoolClass.new

  end

   def create
      # binding.pry
      @school_class = SchoolClass.new
      @school_class.title = params[:school_class][:title]
  	  @school_class.room_number = params[:school_class][:room_number]
  	  @school_class.save

    redirect_to school_class_path(@school_class)
  end

  def edit
    @school_class =  SchoolClass.find_by(params[:id])
  end

  def update

    @school_class = SchoolClass.find_by(params[:id])
      # binding.pry
    @school_class.title = params[:school_class][:title]
    @school_class.room_number = params[:school_class][:room_number]
    @school_class.save

    redirect_to school_class_path(@school_class)
  end
end
