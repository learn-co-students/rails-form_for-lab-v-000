require 'pry'
class SchoolClassesController < ApplicationController

  def create
    #binding.pry
    @school_class = SchoolClass.new(params.require(:school_class).permit(:title, :room_number))
    @school_class.save
    redirect_to school_class_path(@school_class)
  end

end
