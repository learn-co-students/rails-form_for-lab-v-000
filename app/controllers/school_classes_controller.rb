class SchoolClassesController < ApplicationController
  before_action :set_school_class, only: [:show, :edit, :update]

  def show
  end

  def new
    @school_class = SchoolClass.new
  end

  def create
    @school_class = SchoolClass.new(params.require(:school_class))
    @school_class.save
    render_show
  end

  def edit
  end

  def update
    @school_class.update(params.require(:school_class))
    render_show
  end

  private

  def set_school_class
    @school_class = SchoolClass.find(params[:id])
  end

  def render_show
    redirect_to school_class_path(@school_class)
  end
end
