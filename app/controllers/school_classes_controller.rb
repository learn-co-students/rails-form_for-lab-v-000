class SchoolClassesController < ApplicationController
  def new
    @schoolclass = SchoolClass.new
  end

  def create
    @schoolclass = SchoolClass.new(params.require(:schoolclass).permit(:title, :room_number))
    @schoolclass.save
    redirect_to school_class(@school_class)
  end

  def show
  end

  def edit
  end

  def update
  end
end
