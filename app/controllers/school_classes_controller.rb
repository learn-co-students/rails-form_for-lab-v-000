class SchoolClassesController < ApplicationController

 def index
  @school_classes = SchoolClass.all 
 end

 def new
  @school_class = SchoolClass.new
  render '/school_classes/new.html'
 end

 def create
  @school_class = SchoolClass.create(post_params)
  redirect_to school_class_path(@school_class)
 end

 def show
  @school_class = SchoolClass.find(params[:id])
  render '/school_classes/show.html'
 end

 def edit
  @school_class = SchoolClass.find(params[:id])
  render '/school_classes/edit.html'
 end

 def update
  @school_class = SchoolClass.find(params[:id])
  @school_class.update(post_params)
  redirect_to school_class_path(@school_class)
 end

 private
  def post_params
    params.require(:school_class).permit(:title, :room_number)
  end

end