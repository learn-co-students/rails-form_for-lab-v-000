class SchoolClassesController < ApplicationController

  def index
  end

  def show
  end

  def new
    @school_class = SchoolClass.new
  end

  def create
    @school_class = SchoolClass.new
    @school_class.save
    # binding.pry
    redirect_to school_class_path(@school_class)
  end

  def edit
  end

  def update
  end

  def destroy
  end

end
