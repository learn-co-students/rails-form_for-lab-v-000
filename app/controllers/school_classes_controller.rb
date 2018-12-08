class SchoolClassesController < ApplicationController
 
    def new
        @schoolclass = SchoolClass.new
    end

    def create
        @schoolclass = SchoolClass.create(
            title: params[:school_class][:title],
            room_number: params[:school_class][:room_number]
        )
        redirect_to school_class_path(@schoolclass)        
    end

    def show
        @schoolclass = SchoolClass.find(params[:id])
    end    

    def edit
        @schoolclass = SchoolClass.find(params[:id])        
    end

    def update
        @schoolclass = SchoolClass.find(params[:id])

        @schoolclass.update(
            title: params[:school_class][:title],
            room_number: params[:school_class][:room_number]
        )
        redirect_to school_class_path(@schoolclass)
    end

end
