class SchoolClassesController < ApplicationController

  def new
  end

  def show
    @school_class = SchoolClass.find(params[:id])
  end

  def create
    binding.pry
    @school_class = SchoolClass.create(title: params[:school_class][:title], room_number: params[:school_class][:room_number])
    redirect_to school_class_path(@school_class)
  end

  def edit
    @school_class = SchoolClass.find(params[:id])
  end

end
