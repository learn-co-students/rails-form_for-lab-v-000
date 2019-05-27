class StundentController < ApplicationController
    def index 
        @students = Student.all
    end 

    def show 
        find_me(params[:id])
    end

    def new 
        @student = Student.new
    end

    def create 
        @student = Student.new(strong_params(:title, :room_number))
        @student 
        redirect_here(@student)
    end

    def update 
        @student = Student.find(params[:id])
        @student :room_number))
        redirect_here(@student)
    end

    def edit 
        find_me(params[:id])
    end

    private 
    
    def strong_params(*args)
        params.require(:school_class).permit(*args)
    end

    def redirect_here(instance)
        redirect_to student_path(instance)
    end

    def find_me(id)
        @student = Student.find(id)
    end
end