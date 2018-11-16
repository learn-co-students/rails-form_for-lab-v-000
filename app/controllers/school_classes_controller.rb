class SchoolClassesController < ApplicationController

  def index
    @schoolclasses = SchoolClass.all
  end

  def new
  end

  def create
    @schoolclass = SchoolClass.create(title: params[:school_class][:title], room_number: params[:school_class][:room_number])
    redirect_to "/school_classes/#{@schoolclass.id}"
  end

  def show
  end

  def edit
  end

  def update
  end

end
