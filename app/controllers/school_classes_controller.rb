class SchoolClassesController < ApplicationController 

    def index
        @allclasses = SchoolClass.all
    end

    def new 
    end

    def create 
        @class = SchoolClass.new
        @class.title = params["school_class_title"]
        @class.room_number = params["school_class_room_number"]
        @class.save

        redirect_to school_class_path(@class)
    end 

    def show
        @class = SchoolClass.find_by(params[:id])
    end

    def edit 
        @class = SchoolClass.find_by(params[:id])
    end

    def update 
        @class = SchoolClass.find_by(params[:id])
        @class.title = params["school_class"]["title"]
        @class.room_number = params["school_class"]["room_number"]
        @class.save

        redirect_to school_class_path(@class)
    end

end