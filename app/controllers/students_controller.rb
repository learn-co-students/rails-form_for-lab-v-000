class StudentsController < ApplicationController
	def show
		@student = find_student
	end

	def new
		@student = Student.new()
	end

	def create
		@student = Student.create(params_helper(:first_name, :last_name))
		redirect_to student_path(@student)
	end

	def edit
		@student = find_student
	end

	def update
		@student = find_student
		@student.update(params_helper(:first_name, :last_name))
		redirect_to student_path(@student)
	end


	private

		def find_student
			Student.find(params[:id])
		end

		def params_helper(*args)
			params.require(:student).permit(*args)
		end


end
