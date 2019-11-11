class SchoolClassesController < ApplicationController
  def new
    @school_class = SchoolClass.new
  end

  def create
    @school_class = SchoolClass.create(room_number: params[:school_class][:room_number], title: params[:school_class][:title])
    redirect_to school_class_path(@school_class)
  end

  def show
    @school_class = SchoolClass.find(params[:id])
  end

  def edit
    @school_class = SchoolClass.find(params[:id])
  end

  def update
    @school_class = SchoolClass.find(params[:id])
		@school_class.update(room_number: params[:school_class][:room_number], title: params[:school_class][:title])
		redirect_to school_class_path(@school_class)
  end
end
