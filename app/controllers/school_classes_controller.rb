class SchoolClassesController < ApplicationController

	def show
	  @school_class = SchoolClass.find(params[:id])
	end

	def new 
	  
	end

	def create
	end

end
