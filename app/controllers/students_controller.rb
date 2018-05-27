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
	end

	def edit
	  @student = Student.find(params[:id])
	end

  def update
	  @student = Student.find(params[:id])

	  redirect_to student_path(@student)
	end

end
