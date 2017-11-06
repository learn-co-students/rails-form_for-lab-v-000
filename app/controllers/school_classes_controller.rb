class SchoolClassesController < ApplicationController
  def new # implicitly renders views/school_classes/new.html.erb view file, where form to create new school_class is displayed
    @school_class = SchoolClass.new # instantiate new school_class instance stored in @school_class instance variable to pass to view file
  end

  def create
    @school_class = SchoolClass.new(school_class_params) # instantiate school_class instance with title and/or room_number attribute values set via mass assignment
    @school_class.save # save instance to DB. (Also, instance is stored in instance variable to pass to view file).
    redirect_to school_class_path(@school_class) # redirect to show page of school_class just created
  end

  def show # implicitly renders views/school_classes/show.html.erb view file, which shows a single school_class
    @school_class = SchoolClass.find(params[:id]) # find school class instance by its id attribute value, i.e., whatever replaces :id route variable
  end

  def edit # implicitly renders the views/school_classes/edit.html.erb view file, where form to edit school_class is presented
    @school_class = SchoolClass.find(params[:id]) # find the school_class to be edited by its id attribute value, i.e., whatever replaces :id route variable
  end

  def update
    @school_class = SchoolClass.find(params[:id]) # find school_class instance being edited by its id value, i.e., whatever replaces :id route variable
    @school_class.update(school_class_params) # mass assign attribute values from hash and save changes to DB
    redirect_to school_class_path(@school_class) # redirect to show school_class just edited
  end

  private

  def school_class_params
    params.require(:school_class).permit(:title, :room_number)
  end
  # form_for method is directly connected to SchoolClass model
  # params hash must have top-level "school_class" key, which points to (and stores) school_class hash nested inside of params hash
  # a school_class instance can only be assigned title and/or room_number attributes from the values submitted in these 2 permitted form fields
end
