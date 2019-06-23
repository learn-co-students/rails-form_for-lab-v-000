class StudentsController < ApplicationController
  
	def show
		@students = Student.find(params[:id])
	end

	def new
		@student = Student.new
	end

	def create
	  @student = Student.new(student_params(:first_name,:last_name))
	  @student.save
	  redirect_to student_path(@student)
	end

	def update
	  @student = Student.find(params[:id])
	  @student.update(student_params(:title))
	  redirect_to student_path(@student)
	end

	def edit
	  @student = Student.find(params[:id])
	end

	private #secures the helper method

	def student_params(*args) #is the helper method 

		params.require(:student).permit(*args)
		#uses .require and .permit methods as stronger params to prevent hacks through inspect element right click edit html 
		#require restricts, permit allows, and *args is for the custom arguments
	end
end