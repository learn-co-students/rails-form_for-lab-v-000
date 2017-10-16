class SchoolClassesController < ApplicationController

  def index
    @school_classes = SchoolClass.all
  end

end
