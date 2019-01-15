require 'pry'

class SchoolClassesController < ApplicationController

  def index
    # binding.pry
  end

  def show
    # binding.pry
    @school_class = SchoolClass.find_by_id(params[:id])
  end

  def new
    @school_class = SchoolClass.new
  end

  def create
	  @school_class = SchoolClass.new(school_class_params(:title, :room_number))
    @school_class.save
    redirect_to school_class_path(@school_class)
	end


	def update
	  @post = Post.find(params[:id])
	  @post.update(post_params(:title))
	  redirect_to post_path(@post)
	end


  private

  def school_class_params(*args)
    params.require(:school_class).permit(*args)
  end


end
