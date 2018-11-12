class SchoolClassesController < ApplicationController

  def create
    @schoolclasses = SchoolClass.create(
     {
       title: params[:title],
       room_number: params[:room_number]
     }
   )
   redirect_to school_classes_path(@school_classes)
  end

  def new
  end

  def show
  end

  def edit
  end

  def update
  end
end
