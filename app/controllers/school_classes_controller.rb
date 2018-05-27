class SchoolClassesController < ApplicationController

	def new
		@school_class = SchoolClass.new
	end

	def create
		# puts "Params = #{params} || Data = #{params["school_class"]}"
		@school_class = SchoolClass.new
		@school_class.title = params["school_class"]["title"]
		@school_class.room_number = params["school_class"]["room_number"]
		@school_class.save
		# puts "new school_class = #{@school_class}"
		redirect_to school_class_path(@school_class)
	end

	def show
		@school_class = SchoolClass.find(params[:id])
		# puts "School Class = #{@school_class.id} || #{@school_class.title} || #{@school_class.room_number}"
	end

	def edit
	  @school_class = SchoolClass.find(params[:id])
	end

  def update
	  @school_class = SchoolClass.find(params[:id])
    @school_class.update(title: params[:title], room_number: params[:room_number])

	  redirect_to student_path(@school_class)
	end


end
