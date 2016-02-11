class StudentsController < ApplicationController

	def show
		@student = Student.find_by_id(params[:id])
	end

	def new
		@student = Student.new
	end

	def create
		@student = Student.new(student_params)
		@student.save
		redirect_to student_path(@student)
	end

	def edit
		@student = Student.find_by_id(params[:id])
	end

	def update
		@student = Student.find_by_id(params[:id])
		@student.update(student_params)
		@student.save
		redirect_to student_path(@student)
	end

end

private

	def student_params
		params.require(:student)
	end
