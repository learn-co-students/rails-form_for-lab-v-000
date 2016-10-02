class SchoolClassesController < ApplicationController

  def index
    @schoolclasses = SchoolClass.all
  end

  def new
    @schoolclass = SchoolClass.new
  end

  def create
    @schoolclass = SchoolClass.new(post_params(:title, :room_number))
    @schoolclass.save

    redirect_to school_class_path(@schoolclass)
  end

  def show 
    @schoolclass = SchoolClass.find(params[:id])
  end

  def edit
    @schoolclass = SchoolClass.find(params[:id])
  end

  def update
    @schoolclass = SchoolClass.find(params[:id])
    @schoolclass.update(post_params(:title, :room_number))
    redirect_to school_class_path(@schoolclass)
  end
 


private
# We pass the permitted fields in as *args;
# this keeps `post_params` pretty dry while
# still allowing slightly different behavior
# depending on the controller action
def post_params(*args)
  params.require(:school_class).permit(*args)
end

end