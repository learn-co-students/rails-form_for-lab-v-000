class SchoolClassesController < ApplicationController
  def new
    @school_class = SchoolClass.new
  end

  def create
  end
end
