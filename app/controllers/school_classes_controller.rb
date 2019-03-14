class SchoolClassesController < ApplicationController
    def index
        @school_classes = SchoolClass.all
    end

    def show
        @school_class = SchoolClass.find(params[:id])
    end

    def new
        @school_class = SchoolClass.new
    end

    def create
        @school_class = SchoolClass.new(school_class_params(:title, :room_number))
        @school_class.save
        redirect_to school_class_path(@school_class)
    end

    def update

    end

    private
        def school_class_params(*args)
            params.require(:school_class).permit(:title, :room_number)
        end
    
end