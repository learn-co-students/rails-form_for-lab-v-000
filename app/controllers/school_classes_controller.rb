class SchoolClassesController < ApplicationController

def index
    @schoolclass = SchoolClass.all
  end

  def show
    @schoolclass = SchoolClass.find(params[:id])
  end

  def new
    @schoolclass = SchoolClass.new
  end

  def create
    SchoolClass.create(title: params[:title], room_number: params[:room_number])
    redirect_to school_class_path(@schoolclass)
  end

  def edit
    @schoolclass = SchoolClass.find(params[:id])
  end

  def update
    @schoolclass = SchoolClass.find(params[:id])
    @schoolclass.update(params.require(:schoolclass))
    redirect_to school_class_path(@student)
  end

end
