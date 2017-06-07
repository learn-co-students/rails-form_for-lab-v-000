class StudentsController < ApplicationController
	def index
	end

	def new
		@student = Student.new
	end

	def create
		@student = Student.create(params.require(:student))
		@student.save
		redirect_to student_path(@student.id)
	end

	def show	 
		@student = Student.find_by_id(params["id"])
	end

	def edit
	    @student = Student.find_by_id(params["id"])	
	end

	def update
	  student = Student.find_by_id(params["id"])
      student.update(params.require(:student))
      redirect_to student_path(student.id)
	end
end