class SchoolClassesController < ApplicationController
  def index
    @school_class = SchoolClass.all
  end

  def new
    @school_class = SchoolClass.new
  end

  def create
    @school_class = SchoolClass.create(params[:school_class])
    redirect_to school_class_path(@school_class)
  end

  def show
    current_school_class
  end

  def update
    current_school_class
    @school_class.update(params[:school_class])
    redirect_to school_class_path(@school_class)
  end

  def edit
    current_school_class
  end

  private
    def current_school_class
      @school_class = SchoolClass.find(params[:id])
    end
end
