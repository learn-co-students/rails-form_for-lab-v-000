require 'pry'

class SchoolClassesController < ApplicationController

def index
  @classes = SchoolClass.all
end

def new
  @schoolclass = SchoolClass.new
end

def create
  @schoolclass = SchoolClass.create(title: params[:school_class][:title], room_number: params[:school_class][:room_number])
  redirect_to school_class_url(@schoolclass)
end

def show
  @schoolclass = SchoolClass.find_by_id(params[:id])
end

def edit
  @schoolclass = SchoolClass.find_by_id(params[:id])
end

def update
  @schoolclass = SchoolClass.find_by_id(params[:id])
  @schoolclass.update_attributes!(params[:school_class])
  redirect_to school_class_url(@schoolclass)
end

end
