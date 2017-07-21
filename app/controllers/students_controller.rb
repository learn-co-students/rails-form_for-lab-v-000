class StudentsController < ApplicationController
	def index
		@students = Student.all
	end

	def new
		@student = Student.new
	end

	def create
		@student = Student.new(student_params)
		@student.save
		redirect_to student_path(@student)
	end

	def show
		@student = student_find
	end

	def edit
		@student = student_find
	end

	def update
		@student = student_find
		@student.update(student_params)
		redirect_to student_path(@student)
	end

	private

	def student_params
		params.require(:student).permit(:first_name, :last_name)
	end

	def student_find
		Student.find(params[:id])
	end
end