class SchoolClassesController < ApplicationController
  
  def new
    
  end

  def create
    school_class = SchoolClass.create(params.require(:school_class).permit(:title,:description))
    redirect_to school_class_path(school_class)
  end

  def show
    @school_class = SchoolClass.find(params.require(:id))
  end

  def edit
    @school_class = SchoolClass.find(params.require(:id))
  end

  def update
    school_class = SchoolClass.update(params.require(:id), params.require(:school_class).permit(:title,:description))
    redirect_to school_class_path(school_class)
  end

end