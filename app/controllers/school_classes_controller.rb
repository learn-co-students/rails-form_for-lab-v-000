class SchoolClassesController < ApplicationController
  
  def new
    @school_class = SchoolClass.new
  end

  def create
    @school_class = SchoolClass.new 
    @school_class.title = params[:school_class][:title]
	  @school_class.room_number = params[:school_class][:room_number]
    @school_class.save
    redirect_to school_class_path(@school_class.id)  
     # redirects to the new student A.K.A the new method
  end

  def show
    @school_class = SchoolClass.find(params[:id])
  end

  def edit
    @school_class = SchoolClass.find(params[:id])
  end

  def update
    @school_class = SchoolClass.find(params[:id])
		@school_class.update(params.require(:school_class))
	  redirect_to school_class_path(@school_class)
  end

end #end of the class method.
