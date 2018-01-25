class SchoolClassesController < ApplicationController
  before_filter :set_school_class, only: [:show, :edit, :update]

  def show
  end

  def new
    @school_class = SchoolClass.new
  end

  def create
    @school_class = SchoolClass.new(params[:school_class])
    if @school_class.save
      redirect_to school_class_path(@school_class)
    else
      #error goes here
    end
  end

  def edit
  end

  def update
    if @school_class.update(params[:school_class])
      redirect_to school_class_path(@school_class)
    else
      # error
    end 
  end

  private

  def set_school_class
    @school_class = SchoolClass.find(params[:id])
  end
end
