class StudentsController < ApplicationController
	def create
		@student = Student.new(student_params)
		@student.save
		redirect_to @student
	end

	def show
		@student = Student.find(params[:id])
	end

	def edit
		@student = Student.find(params[:id])
	end

	def update
		@student = Student.find(params[:id])
		@student.update(student_params)
		redirect_to @student
	end



	def student_params
		params.require(:student).permit(:first_name, :last_name)
	end
end