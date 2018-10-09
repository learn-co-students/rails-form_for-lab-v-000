class SchoolClassesController < ApplicationController

  def new
  end

  def create
    @schoolclass = SchoolClass.new(params.require(:schoolclass).permit(:title, :room_number))
    @schoolclass.save
    redirect_to post_school_class(@schoolclass)
  end

  def show
  end

  def edit
  end

  def update
    @schoolclass = SchoolClass.find(params[:id])
    @schoolclass = SchoolClass.update(params.require(:schoolclass).permit(:title, :room_number))
    redirect_to post_school_class(@schoolclass)
  end

end
