class StudentController < ApplicationController
	def index
		@students = Student.all
	end

	def show
		@student = Student.find(params[:id])
	end

	def new
		@pstudent = Student.new
	end

	def create
	  @pstudent = Student.new(student_params(:first_name, :last_name))
	  @student.save
	  redirect_to student_path(@student)
	end

	def update
	  @student = Student.find(params[:id])
	  @student.update(student_params(:first_name, :last_name))
	  redirect_to student_path(@student)
	end

	def edit
	  @student = Student.find(params[:id])
	end

	private

	def student_params(*args)
		params.require(:student).permit(*args)
	end
end
