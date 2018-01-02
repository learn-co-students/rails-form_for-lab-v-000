class StudentsController < ApplicationController
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
	  @student = Student.new(params.require(:student))
	  @student.save
	  redirect_to student_path(@student)
	end

	###def create
	###  @post = Post.new(post_params)
	###  @post.save
	###  redirect_to post_path(@post)
	###end

	def update
	  @student = Student.find(params[:id])
	  @student.update(params.require(:student))
	  redirect_to student_path(@student)
	end

	def edit
	  @student = Student.find(params[:id])
	end

	#private


# We pass the permitted fields in as *args;
# this keeps `post_params` pretty dry while
# still allowing slightly different behavior
# depending on the controller action
	#def student_params
  #	params.require(:student).permit(:first_name, :last_name)
	#end

	#def student_params(*args)
	#	params.require(:student).permit(*args)
	#end

	#def post_params
	#  params.require(:post).permit(:title, :description)
	#end

end
