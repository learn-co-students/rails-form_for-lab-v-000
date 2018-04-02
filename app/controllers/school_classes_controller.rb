class SchoolClassesController < ApplicationController
  def new
    @school_class = SchoolClass.new
  end

  def create
    @school_class = SchoolClass.new(school_class_params(:title, :room_number))
    @school_class.save
    redirect_to school_class_path(@school_class)
  end

  def show
    @school_class = found_params
  end

  def edit
    @school_class = found_params
  end

  def update
  @school_class = found_params
  @school_class.update(school_class_params(:title, :room_number))
  end

  private

	def school_class_params(*args)
		params.require(:school_class).permit(*args)
	end

  def found_params
    SchoolClass.find(params[:id])
  end
end
