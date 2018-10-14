class SchoolClassesController < ApplicationController

 

    def new 
        @class = SchoolClass.new 
    end
    
    def create
        @class = SchoolClass.new(post_params)
        @class.save 
        
        redirect_to school_class_path(@class)
    end

    def show
        @classes = SchoolClass.find(params[:id])
    end

    def edit
        @class = SchoolClass.find(params[:id])
    end

    def update
        @class = SchoolClass.find(params[:id])
        @class.update(post_params)

        redirect_to school_class_path(@class)
    end

    private 

    def post_params
        params.require(:school_class).permit(:title, :room_number)
    end
end