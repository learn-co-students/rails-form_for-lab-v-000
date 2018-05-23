class StudentsController < ApplicationController

	def new
		@student = Student.new

	end

	def edit 
		@student = Student.find(params[:id])

	end

	def show
		@student = Student.find(params[:id])


	end

	def create
		@student = Student.create(params['student'])
		redirect_to student_path(@student)

	end

	def update
		@student = Student.find(params[:id])
		@student.update(params.require(:student).permit(:first_name, :last_name))
		redirect_to student_path(@student)

	end

# @post.update(params.require(:post).permit(:title, :description))

end
