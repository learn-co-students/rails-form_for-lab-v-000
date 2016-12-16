class StudentsController < ApplicationController
	before_action :set_student, only: [:show, :edit, :update]
	
	def index
		@students = Student.all
	end

	def show
		
	end

	def new
		@student = Student.new
	end

	def create
		@student = Student.new(student_params)
		redirect_to student_path(@student) if @student.save
	end

	def edit
		
	end

	def update
		@student.update(student_params)
		redirect_to student_path(@student) if @student.save
	end

	private

	def set_student
		@student = Student.find(params[:id])
	end

	def student_params
		params.require(:student).permit(:first_name, :last_name)
	end
end
