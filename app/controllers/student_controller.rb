class StudentController < ApplicationController

    def index
		@students=Student.all
	end

	def show
		@student = Student.find(params[:id])
	end

	def new
		@student = Student.new
	end

	def create
		@student = Student.new(post_params(:first_name, :last_name))
		@student.save
		redirect_to post_path(@post)
	end
	 
	def update
		@student = Student.find(params[:id])
		@student.update(post_params(:first_name, :last_name))
		redirect_to post_path(@student)
	end

	def edit
	  @student = Student.find(params[:id])
	end

	private
	
	def post_params(*args)
		params.require(:post).permit(*args)
    end
    
end