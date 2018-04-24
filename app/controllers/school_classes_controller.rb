class SchoolClassesController < ApplicationController

  def new #sends you to the form to create a new schoolclass
    @schoolclass = SchoolClass.new #creates an empty instance of the school class in memory so that the form will know what class it is referring to
  end

  def create # this is where the form data is sent after the form is filled out in the new route
    #the params that are sent are used to create the new schoolclass
    #@schoolclass = SchoolClass.create(params[:school_class])
    @schoolclass = SchoolClass.create(params.require(:school_class).permit(:title, :room_number))
    redirect_to school_class_path(@schoolclass) #where does this redirect? to show?
  end

  def show
    @schoolclass = SchoolClass.find(params[:id])
  end

  def edit
    @schoolclass = SchoolClass.find(params[:id])
  end

  def update
    @schoolclass = SchoolClass.find(params[:id])
    #@schoolclass.update(params[:school_class])
    #@schoolclass.update(params.require(:school_class).permit(:title, :room_number))
    @schoolclass.update(schoolclass_params(:title, :room_number))
    redirect_to school_class_path(@schoolclass)
  end

  private
  def schoolclass_params(*args)
    params.require(:school_class).permit(*args)
  end

end
