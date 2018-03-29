class StudentsController < ApplicationController
	def index
		@students = Student.all
	end

	def show
		@student = Student.find(params[:id])
	end

	def new
		@student = Student.new
	end

	def create
	  @student = Student.new
	  @student.first_name = params[:first_name]
	  @student.last_name = params[:last_name]
	  @student.save
	  redirect_to post_path(@student)
	end

	def edit
		@student = Student.find(params[:id])
	end

	def update
	  @student = Student.find(params[:id])
	  @student.update(first_name: params[:first_name], last_name: params[:last_name])
	  redirect_to post_path(@student)
	end
end
