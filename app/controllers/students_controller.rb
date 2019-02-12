class StudentsController < ApplicationController
	def index
		@students = Student.all
	end

	def edit
		@student = Student.find(params[:id])
	end

	def new

	end

	def show
		@student = Student.find(params[:id])
	end

	def create
		@student = Student.new(:first_name => params[:student_first_name], :last_name => params[:student_last_name])
		@student.save

		redirect_to student_path(@student)
	end

	def update
		@student = Student.find(params[:id])

		@student.update(:first_name => params.require(:student).require(:first_name), :last_name => params.require(:student).require(:last_name))
		redirect_to student_path(@student)
	end
end