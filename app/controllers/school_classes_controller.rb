class SchoolClassesController < ApplicationController

    def new
        @schoolclass = SchoolClass.new
    end

    def create
        @schoolclass = SchoolClass.new(params.require(:schoolclass).permit(:title, :room_number))
        @schoolclass.save
        redirect_to schoolclass_path(@schoolclass)
    end

    def show
        @schoolclass = SchoolClass.find(params[:id])
    end

    def edit
        @schoolclass = SchoolClass.find(params[:id])
    end

    def update
        @schoolclass = SchoolClass.find(params[:id])
        @student.update(params.require(:schoolclass).permit(:title, :room_number))
    end

end