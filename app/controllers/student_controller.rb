class StudentController < ApplicationController
	def index
		@students = Student.all
	end

	def show
		@student = Student.find(params[:id])
	end

	def new
		@student = Student.new
	end

	def create
	  @student = Student.new(params.require(:student).permit(:first_name, :last_name))
	  @student.save
	  redirect_to post_path(@student)
	end

	def update
	  #@post = Post.find(params[:id])
	  #@post.update(params.require(:post).permit(:title))
	  #redirect_to post_path(@post)
	end

	def edit
	  @student = Student.find(params[:id])
	end
end
