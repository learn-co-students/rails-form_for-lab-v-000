class SchoolClassesController < ApplicationController
  def create
    @class = SchoolClass.new(params[:school_class])
    @class.save
        # binding.pry
    redirect_to school_class_path(@class)
  end

  def new
    @class = SchoolClass.new
  end

  def edit
    @class = SchoolClass.find(params[:id])
  end

  def show
    @class = SchoolClass.find(params[:id])
  end

  def update
    @class = SchoolClass.find(params[:id])
    @class.update(params[:school_class])
    redirect_to school_class_path(@class)
  end
end