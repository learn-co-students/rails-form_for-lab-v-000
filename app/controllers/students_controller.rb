class StudentsController < ApplicationController
	def show 
	end 

	def new 
		@student = ""
	end

	def create 
		@student = Student.new(students_params(:first_name, :last_name, :created_at, :updated_at))
		@student.save 
		redirect_to student_path(@student)
	end

	private 

	def students_params(*args)
		params.require(:student).permit(*args)
	end
end
