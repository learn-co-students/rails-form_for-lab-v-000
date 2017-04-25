class SchoolClassesController < ApplicationController
	def show
		@school_class = find_school_class
	end

	def new
		@school_class = SchoolClass.new()
	end

	def create
		@school_class = SchoolClass.create(params_helper(:title, :room_number))
		redirect_to SchoolClass.last
	end

	def edit
		@school_class = find_school_class
	end

	def update
		@school_class = find_school_class
		@school_class.update(params_helper(:title, :room_number))
		redirect_to school_class_path(@school_class)
	end


		private

		def find_school_class
			SchoolClass.find(params[:id])
		end

		def params_helper(*args)
			params.require(:school_class).permit(*args)
		end

end
