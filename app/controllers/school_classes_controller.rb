class SchoolClassesController < ApplicationController

  def index
  end

  def show
    set_school_class
  end

  def new
    @school_class = SchoolClass.new()
  end

  def create
    @school_class = SchoolClass.create(school_class_params(:title, :room_number))
    redirect_to school_class_path(@school_class)
  end

  def edit
    set_school_class
  end

  def update
    set_school_class
    if !params[:school_class][:title].empty?
      @school_class.update(school_class_params(:title))
    end
    if !params[:school_class][:room_number].empty?
      @school_class.update(school_class_params(:room_number))
    end
    redirect_to school_class_path(@school_class)
  end

  private

  def set_school_class
    @school_class = SchoolClass.find(params[:id])
  end

	def school_class_params(*args)
	  params.require(:school_class).permit(:title, :room_number)
	end

end
