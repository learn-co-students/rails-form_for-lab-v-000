class SchoolClassesController < ApplicationController
  def show
    set_student_class
  end

  def new
    @school_class = SchoolClass.new
  end

  def edit
    set_student_class
  end

  def create
    @school_class = SchoolClass.create(params.require(:school_class))
    redirect_to school_class_path(@school_class)
  end

  def update
    set_student_class
    @school_class.update(params.require(:school_class))
    redirect_to school_class_path(@school_class)
  end
  
  private
  
  def set_student_class
    @school_class = SchoolClass.find(params[:id])
  end
end