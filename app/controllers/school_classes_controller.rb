class SchoolClassesController < ApplicationController
  

	# def create
  # 	@post = Post.new(school_params(:title, :description))
  #   @post.save
	# 	redirect_to post_path(@post)
	# end
  def new
    @school_class = SchoolClass.new
  end

  def create
    # binding.pry
    @school_class = SchoolClass.new(title: params[:school_class][:title], room_number: params[:school_class][:room_number])
    @school_class.save
    redirect_to school_class_path(@school_class)
  end

  def show
    # binding.pry
    @school_class = SchoolClass.find(params[:id])
  end

  def edit
    
  end

  def update
    
  end


  private

	def school_params(*args)
		params.require(:school_class).permit(*args)
	end
end