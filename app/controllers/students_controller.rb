class StudentsController < ApplicationController

	def new
		@student = Student.new
	end

	def create
		@student = Student.new
		@student.first_name = params["student"]["first_name"]
		@student.last_name = params["student"]["last_name"]
		@student.save
    redirect_to student_path(@student)
	end

	def show
		@student = Student.find(params[:id])
	end

	def edit
	  @student = Student.find(params[:id])
		# puts "Edit Student : #{@student}"
	end

  def update
	  @student = Student.find(params[:id])
		# puts "Update Student : #{@student} || #{@student.id} || #{@student.first_name} || #{@student.last_name}"
    @student.update(first_name: params["student"]["first_name"], last_name: params["student"]["last_name"])
		# puts "Updated Student : #{@student} || #{@student.id} || #{@student.first_name} || #{@student.last_name}"
	  redirect_to student_path(@student)
	end

end
