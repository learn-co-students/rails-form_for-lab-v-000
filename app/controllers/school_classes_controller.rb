class SchoolClassesController < ApplicationController
  
  def new
    @school_class = SchoolClass.new
  end

  def create
    @school_class = SchoolClass.new 
    @school_class.title = params[:title]
	  @school_class.room_number = params[:room_number]
    @school_class.save
    redirect_to school_class_path(@school_class.id)  
     # redirects to the new student A.K.A the new method

  end

  def show
    @school_class = SchoolClass.find(params[:id])

  end

  def edit
  end

  def update
  end

end #end of the class method.
