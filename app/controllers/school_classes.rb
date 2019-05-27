class SchoolClassController < ApplicationController
    def index 
        @school_classes = SchoolClass.all
    end 

    def show 
        find_me(params[:id])
    end

    def new 
        @school_class = SchoolClass.new
    end

    def create 
        @school_class = SchoolClass.new(strong_params(:title, :room_number))
        @school_class.save 
        redirect_here(@school_class)
    end

    def update 
        @school_class = SchoolClass.find(params[:id])
        @school_class.update(strong_params(:title, :room_number))
        redirect_here(@school_class)
    end

    def edit 
        find_me(params[:id])
    end

    private 
    
    def strong_params(*args)
        params.require(:school_class).permit(*args)
    end

    def redirect_here(instance)
        redirect_to school_class_path(instance)
    end

    def find_me(id)
        @school_class = SchoolClass.find(id)
    end
end