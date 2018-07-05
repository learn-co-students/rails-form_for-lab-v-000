class StudentsController < ApplicationController
	def show 
		@student = find_student
	end 

	def new 
		@student = Student.new
	end

	def create 
		@student = Student.new(students_params(:first_name, :last_name, :created_at, :updated_at))
		@student.save 
		redirect_to student_path(@student)
	end

	def edit 
		@student = find_student
	end

	def update 
		@student = find_student
		@student.update(params.require(:student))
		redirect_to student_path(@student)
	end

	private 

	def students_params(*args)
		params.require(:student).permit(*args)
	end

	def find_student 
		Student.find(params[:id])
	end
end
