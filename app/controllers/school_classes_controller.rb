class SchoolClasses < ApplicationController

  def new
    @school_class = SchoolClass.new
  end

  def create
    @school_class = SchoolClass.new(school_class_params(:title, :room_number))
    @school_class.save
    redirect_to school_class_path
  end

  def show
    @school_class = SchoolClass.find(:id)
  end

  def edit
  end

  def update
  end

  def school_class_params(*args)
    params.require(:school_class).permit(*args)
  end

end
