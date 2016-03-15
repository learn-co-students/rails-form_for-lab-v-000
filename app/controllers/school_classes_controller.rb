class SchoolClassesController < ApplicationController
	
	def index
		@schoolClasses = SchoolClass.all
	end
	
	def show
		@schoolClass = SchoolClass.find(params[:id])
	end
	
	def new
		@schoolClass = SchoolClass.new
	end
	
	def create
		@schoolClass = SchoolClass.new(sc_params)
		@schoolClass.save
		redirect_to school_class_path(@schoolClass)
	end
	
	def edit
		@schoolClass = SchoolClass.find(params[:id])
	end
	
	def update
		@schoolClass = SchoolClass.find(params[:id])
		@schoolClass.update(sc_params)
		redirect_to school_class_path(@schoolClass)
	end
	
	private 
	
		def sc_params
			params.require(:school_class).permit(:title, :room_number)
		end
	
end
	
	
	