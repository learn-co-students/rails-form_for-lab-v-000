class SchoolClassesController < ApplicationController

  def new
    @school_class = SchoolClass.new
  end

  def create
    raise params.inspect
    @school_class = SchoolClass.create(title: params[:school_class][:title], room_number: params[:school_class][:room_number])
    redirect_to school_class_path(@school_class)
  end

  def show
    @school_class = SchoolClass.find(params[:id])
  end

  def edit
  end

  def update
  end
end
