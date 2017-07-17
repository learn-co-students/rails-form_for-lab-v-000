class StudentsController < ApplicationController

	def new
		@student = Student.new
	end

	def create
		@student = Student.new(post_params(:first_name, :last_name))
		@student.save
		redirect_to student_path(@student)
	end

	def show
		@student = student_finder
	end

	def edit
		@student = student_finder
	end

	def update
		@student = student_finder
		@student.update(post_params(:first_name, :last_name))
		redirect_to student_path(@student)
	end

	private

	def post_params(*args)
		params.require(:student).permit(:first_name, :last_name)
	end

	def student_finder
		Student.find(params[:id])
	end

end