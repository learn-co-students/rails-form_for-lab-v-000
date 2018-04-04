class SchoolClassesController < ApplicationController
  def new
  end
  def edit
    @school_class= SchoolClass.find(params[:id])
  end
  def show
    @school_class= SchoolClass.find(params[:id])
  end
  def create
    @school_class= SchoolClass.create(first_name: params[:first_name], last_name: params[:last_name])
  end
  def update
    @school_class= SchoolClass.find(params[:id])
    @school_class.update()
  end
end
