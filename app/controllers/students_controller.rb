class StudentsController < ApplicationController
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
        @student = Student.new(strong_params(:first_name, :last_name))
        @student 
        redirect_here(@student)
    end

    def update 
        @student = Student.find(params[:id])
        @student.update(strong_params(:first_name, :last_name))
        redirect_here(@student)
    end

    def edit 
        find_me(params[:id])
    end

    private 
    
    def strong_params(*args)
        params.require(:student).permit(*args)
    end

    def redirect_here(instance)
        redirect_to students_path(instance)
    end

    def find_me(id)
        @student = Student.find(id)
    end
end