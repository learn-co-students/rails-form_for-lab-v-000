class SchoolClassesController < ApplicationController

    def index
		@schoolclass=SchoolClass.all
	end

	def show
		@schoolclass = SchoolClass.find(params[:id])
	end

	def new
		@schoolclass = SchoolClass.new
	end

	def create
		@schoolclass = SchoolClass.new(post_params(:first_name, :last_name))
		@schoolclass.save
		redirect_to post_path(@schoolclass)
	end
	 
	def update
		@schoolclass = SchoolClass.find(params[:id])
		@schoolclass.update(post_params(:first_name, :last_name))
		redirect_to post_path(@schoolclass)
	end

	def edit
	  @schoolclass = SchoolClass.find(params[:id])
	end

	private
	
	def post_params(*args)
		params.require(:post).permit(*args)
    end
    
end