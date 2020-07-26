class SchoolClassesController < ApplicationController
    def new
        @school_class = SchoolClass.new
    end

    def create 
        @school_class = SchoolClass.new
        @school_class
        @school_class.title = params[:student][:title]
        @school_class.room_number = params[:student][:room_number]
        @school_class.save
        redirect_to student_path(@student)
    end

end