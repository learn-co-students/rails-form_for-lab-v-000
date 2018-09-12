class StudentClassesController < ApplicationController

  def new
  end

  def create
    @school_class = SchoolClass.create(params.require(:school_class).permit(:title,:room_number)


  end

  def show
  end

  def edit

  end

  def update
  end

end
