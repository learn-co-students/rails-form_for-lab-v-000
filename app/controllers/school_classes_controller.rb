class SchoolClassesController < ApplicationController
  def create
    @school_class = SchoolClass.create(title: params[:school_class][:title], room_number: params[:school_class][:room_number])
    redirect_to school_class_path(@school_class)
  end

  def new
  end

  def edit
  end

  def update
  end

  def show
  end
end
