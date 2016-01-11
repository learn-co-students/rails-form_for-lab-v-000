class SchoolClassesController < ApplicationController

  def new
    @school_class = SchoolClass.new
  end

  def create
    @school_class = SchoolClass.create(params.require(:school_class))
    redirect_to school_class_path(@school_class)
  end

  def show
    find_class
  end

  def edit
    find_class
  end

  def update
    find_class
    @school_class.update(params.require(:school_class))
    redirect_to school_class_path(@school_class)
  end

  private 

    def find_class
      @school_class = SchoolClass.find(params[:id])
    end 

end