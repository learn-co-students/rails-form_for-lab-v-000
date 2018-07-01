class SchoolClassesController < ApplicationController
  def new
  end

  def create
    @student_class = SchoolClass.new(school_classes_params(:title, :room_number))
    @student_class.save
  end

  private

  def school_classes_params(*args)
    params.require(:school_class).permit(*args)
  end
end
