class StudentsController < ApplicationController
    before_action :get_student, except: [:index, :create]
    def new

    end

    def create
        @student = Student.new(student_params(:first_name, :last_name))
        @student.save
        redirect_to student_path(@student)
    end

    def index
        @students = Student.all
    end

    def show
        
    end

    def edit
        
    end

    def update
        @student.update(student_params(:first_name, :last_name))
        redirect_to student_path(@student)
    end

    private

    def student_params(*args)
        params.require(:student).permit(*args)
    end

    def get_student
        @student =  !!params[:id] ? Student.find(params[:id]) : Student.new
    end


end