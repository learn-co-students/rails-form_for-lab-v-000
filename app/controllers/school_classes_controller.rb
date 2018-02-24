class SchoolClassesController < ApplicationController
    def create
        @school_class = SchoolClass.create(:title => params[:school_class][:title], :room_number => params[:school_class][:room_number].to_i)
        redirect_to school_class_path(@school_class)
    end

    def new
        @school_class = SchoolClass.new
    end

    def show
        @school_class = SchoolClass.find(params[:id])
    end

    def edit
        @school_class = SchoolClass.find(params[:id])
    end

    def update
        @school_class = SchoolClass.find(params[:id])        
        @school_class.update(params[:school_class])
        redirect_to school_class_path(@school_class)        
    end
end