class SchoolClassesController < ApplicationController
  #before doing something, do this private thing,
  before_action :set_school_class, only: :show

  def index
    @school_classes = SchoolClass.all
  end

  def show
  end

  def new
    @school_class = SchoolClass.new  #very clutch line, for #create to work
  end

  def create
    @school_class = SchoolClass.new(post_params)
    @school_class.save
    redirect_to school_class_path(@school_class)
  end

  def edit
    @school_class = SchoolClass.find(params[:id])
  end

  def update
    @school_class = SchoolClass.find(params[:id])
    @school_class.update(post_params)
    redirect_to school_class_path(@school_class)
  end

  private

    def set_school_class
      @school_class = SchoolClass.find(params[:id])
    end

    def post_params
      params.require(:school_class).permit(:title, :room_number)
    end

end
