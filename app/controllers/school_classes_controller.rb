
class SchoolClassesController < ApplicationController
    def new
        @school_class = SchoolClass.new
    end

    def show
        @school_class = SchoolClass.find(params[:id])
    end    

    def create
        @school_class = SchoolClass.create(school_class_params(:title, :room_number))
        @school_class.save
        redirect_to school_class_path(@school_class)
    end

    def edit
        @school_class = SchoolClass.find(params[:id])
    end


    def update
        @school_class = SchoolClass.find(params[:id])
        
        @school_class.update(params.require(:school_class))
        redirect_to school_class_path(@school_class)
    end

    private

    def school_class_params(*arg)
        params.require(:school_class).permit(*arg)
    end

end