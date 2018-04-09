class SchoolClassesController < ApplicationController
  before_action :find_school_class, except: [:new, :create]


  def new
    @school_class = SchoolClass.new
  end

  def create
    @school_class = SchoolClass.new(school_params(:title, :room_number))
    @school_class.save
    redirect_to school_class_path(@school_class)
  end

  def show

  end

  def edit
    
  end

  def update
    @school_class.update(school_params(:title, :room_number))
    redirect_to school_class_path(@school_class)
  end

  private 

  def school_params(*args)
		params.require(:school_class).permit(*args)
  end
  
  def find_school_class
    @school_class = SchoolClass.find(params[:id])
  end

end