class SchoolClassesController < ApplicationController

    def new
        @school_class = SchoolClass.new
    end

    def create
        @school_class = SchoolClass.new(school_class_params)
        @school_class.save
        redirect_to school_class_path(@school_class)
    end

    def show
        @school_class = get_school_class
    end

    def edit
        @school_class = get_school_class
    end

    def update
        @school_class = get_school_class
        @school_class.update(school_class_params)
        redirect_to school_class_path(@school_class)
    end


    private

    def get_school_class
        SchoolClass.find(params[:id])
    end

    def school_class_params
        params.require(:school_class).permit(:title, :room_number)
    end
end