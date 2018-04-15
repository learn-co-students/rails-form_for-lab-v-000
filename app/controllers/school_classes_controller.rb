class SchoolClassesController < ApplicationController

  def show
    @school_class = set_school_class
  end

  def new
    @school_class = SchoolClass.new
  end

  def create
    @school_class = SchoolClass.new(params.require(:school_class))
    @school_class.save
    redirect_to school_class_path(@school_class)
  end



  def edit
      @school_class = set_school_class
  end

  def update
      @school_class = set_school_class
      @school_class.update(params.require(:school_class))
      redirect_to school_class_path(@school_class)
  end

  private
    def set_school_class
      @school_class = SchoolClass.find_by(params[:id])
    end

end
