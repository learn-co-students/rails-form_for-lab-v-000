class SchoolClassesController < ApplicationController

    def show
        @class = SchoolClass.find(params[:id])
    end 

    def new
        @class = SchoolClass.new
    end 

    def create
        @class = SchoolClass.new(school_class_params)
        @class.save
        redirect_to school_class_path(@class)
    end

    def edit
        @school_class = SchoolClass.find(params[:id])
    end 

    def update
        @school_class = SchoolClass.find(params[:id])
        @school_class.update(school_class_params)
        redirect_to school_class_path(@school_class)
    end

    private

     def school_class_params
         params.require(:school_class).permit(:title, :room_number)
     end
end 