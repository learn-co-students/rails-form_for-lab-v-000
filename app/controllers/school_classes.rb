class SchoolClassesController < ApplicationController

    def index
        @student_classes = StudentClass.all
    end

    def new
    end


    def show
        @student_class = StudentClass.find(params[:id])
    end
    
    def edit
        @student_class = StudentClass.find(params[:id])
    end

    def create
        @student_class = StudentClass.new(student_class_params)
        @student_class.save
        redirect_to student_class_path(@student_class)
    end
    
    def update
        @student_class = StudentClass.find(params[:id])
        @student_class.update(student_class_params)
        redirect_to student_class_path(@student_class)
    end
end