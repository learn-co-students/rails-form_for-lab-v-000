class SchoolClassesController < ApplicationController

  def index
		@classes = SchoolClass.all
	end

	def show
		@class = SchoolClass.find(params[:id])
	end

	def new
		@class = SchoolClass.new
	end

	def create
    binding.pry
		@class = SchoolClass.new(post_params(params[:school_class][:title], params[:school_class][:room_number]))
	  @class.save
	  redirect_to class_path(@class)
	end

	def update
		@class = SchoolClass.find(params[:id])
	  @class.update(post_params(params[:school_class][:title], params[:school_class][:room_number]))
	  redirect_to class_path(@class)
	end

	def edit
	  @class = SchoolClass.find(params[:id])
	end

	private

	def post_params(*args)
    binding.pry
		params.require(:post).permit(*args)
	end

end
