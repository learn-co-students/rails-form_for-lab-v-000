class SchoolClassesController < ApplicationController
  def create
    @school_class = SchoolClass.new
	  @school_class.title = params[:school_class][:title]
	  @school_class.room_number = params[:school_class][:room_number]
	  @school_class.save!

	  redirect_to school_class_path(@school_class)

  end
end
