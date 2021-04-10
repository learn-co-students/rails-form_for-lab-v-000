class SchoolClassesController < ApplicationController

    def new
        @school_class = SchoolClass.new
    end

    def create #use strong parameters
      @school_class = SchoolClass.create(school_class_params(:title, :room_number))
      redirect_to school_class_path(@school_class)       
    end

    def show
        @school_class = SchoolClass.find(params[:id])
    end 

    def edit
      @school_class = SchoolClass.find(params[:id])
    end

    def update #use strong parameters
        @school_class = SchoolClass.find(params[:id])
        @school_class.update(school_class_params(:title, :room_number))
        redirect_to school_class_path(@school_class)
    end

    def index 
        @school_classes = SchoolClass.all 
    end

    def school_class_params(*args)
        params.require(:school_class).permit(*args)
    end
end