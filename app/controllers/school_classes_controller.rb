class SchoolClassesController < ApplicationController
  before_action :find_class, only: [:show, :edit, :update]
  before_action :all_classes, only: [:index]

  def index
  end

  def create
    @school_class = SchoolClass.create(post_params(:title, :room_number))
    redirect_to school_class_path(@school_class)
  end

  def new
    @school_class = SchoolClass.new
  end

  def edit
  end

  def show
  end

  def update
    @school_class.update(post_params(:title, :room_number))
    redirect_to school_class_path(@school_class)
  end

  private

  def find_class
    @school_class = SchoolClass.find(params[:id])
  end

  def all_classes 
    @school_classes = SchoolClass.all 
  end

  def post_params(*args)
    params.require(:school_class).permit(*args)
  end
  
end