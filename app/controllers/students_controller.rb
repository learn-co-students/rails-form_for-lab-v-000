

class StudentsController < ApplicationController
	
	def index
	end
	
	def show
		@student = Student.find(params[:id])
	end
	
	def new
		@student = Student.new
	end
	
	def create
		@student = Student.new(form_params)
		@student.save
		redirect_to student_path(@student)
	end
	
	def edit
		
		@student = Student.find(params[:id])
	end
	
	def update
		@student = Student.find(params[:id])
		@student.update(form_params)
		redirect_to student_path(params[:id])
	end
	
	private
		def form_params
			params.require(:student).permit(:first_name, :last_name)
		end	

	
	
end