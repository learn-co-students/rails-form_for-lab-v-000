class SchoolClassesController < ApplicationController

    def show
        @class = SchoolClass.find(params[:id])
    end
    
    def new
        @class = SchoolClass.new
    end

    def create
        @class = SchoolClass.create(params.require(:school_class).permit(:title, :room_number))
        redirect_to school_class_path(@class)
    end

    def edit
        @class = SchoolClass.find(params[:id])
    end

    def update
        @class = SchoolClass.update(params.require(:school_class).permit(:title, :room_number))
        redirect_to school_class_path(@class)
    end

end
