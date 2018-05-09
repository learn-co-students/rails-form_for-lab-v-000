class SchoolClassesController < ApplicationController

    def index
        @school_classes = SchoolClass.all
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

    def create
        @school_class = SchoolClass.new(title: params[:school_class][:title], room_number: params[:school_class][:room_number])
        @school_class.save
        redirect_to school_class_path(@school_class)
    end
    
    def update
        @school_class = SchoolClass.find(params[:id])
        @school_class.update(title: params[:school_class][:title], room_number: params[:school_class][:room_number])
        redirect_to school_class_path(@school_class)
    end
end