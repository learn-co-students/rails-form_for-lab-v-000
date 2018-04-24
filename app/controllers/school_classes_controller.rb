class SchoolClassesController < ApplicationController

  def new
    @school_class = SchoolClass.new
  end

  def create
    # binding.pry
    @school_class = SchoolClass.new(title: params[:school_class][:title], room_number: params[:school_class][:room_number])
    @school_class.save
    redirect_to school_class_path(@school_class)
  end

  def show
    # binding.pry
    @school_class = SchoolClass.find(params[:id])
  end

  def edit
    @school_class = SchoolClass.find(params[:id])
  end

  def update
    @school_class = SchoolClass.find(params[:id])
    @school_class.update(title: params[:school_class][:title], room_number: params[:school_class][:room_number])
    
    redirect_to school_class_path(@school_class)
  end
  
  private

	def school_params(*args)
		params.require(:school_class).permit(*args)
	end
end