require 'pry'

class SchoolClassesController < ApplicationController

  def index
    binding.pry
  end

  def show
  end

  def create
	  @school_class = SchoolClass.create(title: params[:title], room_number: params[:room_number])
	  redirect_to school_class_path(@school_class)
	end

  private

  # def post_params(*args)
  #   params.require(:post).permit(*args)
  # end


end
