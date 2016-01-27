class StudentsController < ApplicationController

	def index
		@students=Student.all
		render 'students/index'
	end

	def show
		@student=Student.find(params[:id])
		render 'students/show'
	end

	def new
		render 'students/new'
	end

	def create
		@student=Student.create(post_params)
	end

	def edit
		@student=Student.find(params[:id])
		render 'students/edit'
	end

	def update
		@student=Student.find(params[:id])
		@student.update(post_params)
		@student.save
		redirect_to(student_path(@student))
	end

	private
 
		def post_params
			params.require(:students).permit(:first_name, :last_name)
		end

end