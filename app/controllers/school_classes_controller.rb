class SchoolClassesController < ApplicationController
  def index
    @classes = SchoolClasses.all
  end

  def show
    @school_class = SchoolClasses.find(params[:id])
  end

end
