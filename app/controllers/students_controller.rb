class StudentsController < ApplicationController

    def new
        @student = Student.new

    end
 def create
    @student = Student.create(params.require(:student).permit(:first_name, :last_name))
    
    redirect_to student_path(@student)
    end

    def show
        @student = Student.find_by(params[:id])
    end
    def edit

    end

end
