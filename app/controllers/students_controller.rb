class StudentsController < ApplicationController
    def show
        @student = Student.find(params[:id])
    end

    def new
        @student = Student.new
    end

    def create
        @student = Student.create(params.require(:student).permit(:first_name, :last_name))
        redirect_to student_path(@student)
    end
end