class SchoolClassesController < ApplicationController
    def index
		@schoolclasses = SchoolClass.all
	end

	def show
		@schoolclasses = SchoolClass.find(params[:id])
	end

	def new
		@schoolclass = SchoolClass.new
	end

	def create
	  @schoolclass = SchoolClass.new
	  @schoolclass.title = params[:title]
	  @schoolclass.room_number = params[:room_number]
	  @schoolclass.save
	  redirect_to schoolclass_path(@schoolclass)
	end

	def edit
		@schoolclass = SchoolClass.find(params[:id])
	end

	def update
		@schoolclass = SchoolClass.find(params[:id])
		@schoolclass.update(params.require(:schoolclass).permit(:title, :room_number))
	  redirect_to schoolclass_path(@schoolclass)
	end
end
