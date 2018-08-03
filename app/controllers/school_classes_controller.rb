class SchoolClassesController < ActionController::Base
	
	def create
	  @school_class = SchoolClass.new(school_class_params(:title, :room_number))
	  @school_class.save
	  redirect_to school_class_path(@school_class)
	end

	def new
		@school_class = SchoolClass.new
	end

	def edit
		@school_class = SchoolClass.find(params[:id])
	end
	
	def show
		@school_class = SchoolClass.find(params[:id])
	end
 
	def update
	  @school_class = SchoolClass.find(params[:id])
	  @school_class.update(school_class_params(:title))
	  redirect_to school_class_path(@school_class)
	end

 
private
 
 
# We pass the permitted fields in as *args;
# this keeps `post_params` pretty dry while
# still allowing slightly different behavior
# depending on the controller action
	def school_class_params(*args)
  			params.require(:school_class).permit(*args)
	end
end

