class SchoolClassesController < ApplicationController
	def index
		@school_classes = SchoolClass.all
	end

	def show
		@school_class = SchoolClass.find(params[:id])
	end

	def new
		@school_class = SchoolClass.new
	end

	def edit
		@school_class = SchoolClass.find(params[:id])
	end

	def create
	  @school_class = SchoolClass.new(params.require(:school_class))
	  @school_class.save
	  redirect_to school_class_path(@school_class)
	end

	###def create
	###  @post = Post.new(post_params)
	###  @post.save
	###  redirect_to post_path(@post)
	###end

	def update
	  @school_class = SchoolClass.find(params[:id])
	  @school_class.update(params.require(:school_class))
	  redirect_to school_class_path(@school_class)
	end

	##def update
	##  @post = Post.find(params[:id])
	##  @post.update(post_params)
	##  redirect_to post_path(@post)
	##end



	#private


# We pass the permitted fields in as *args;
# this keeps `post_params` pretty dry while
# still allowing slightly different behavior
# depending on the controller action
	#def school_class_params
  #	params.require(:school_class).permit(:school_class_title, :school_class_room_number)
	#end

	#def school_class_params(*args)
	#	params.require(:school_class).permit(*args)
	#end

	#def post_params
	#  params.require(:post).permit(:title, :description)
	#end

end
