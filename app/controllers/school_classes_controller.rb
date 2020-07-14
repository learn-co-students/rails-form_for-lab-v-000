class SchoolClassesController < ApplicationController

    def new
        @school_class = SchoolClass.new
    end

    def create
        # byebug
        @school_class = SchoolClass.new
        @school_class.title = params[:school_class][:title]
        @school_class.room_number = params[:school_class][:room_number]
        @school_class.save
        redirect_to school_class_path(@school_class)
    end

    def show
        @school_class = SchoolClass.find(params[:id])
    end

    def edit
        @school_class = SchoolClass.find(params[:id])
    end

    def update
        @school_class = SchoolClass.find(params[:id])
		@school_class.update(params.require(:school_class).permit(:title, :room_number))
		redirect_to school_class_path(@school_class)
    end

    private
    # def post_params(*args)
	# 	params.require(:post).permit(*args)
	# end
end
