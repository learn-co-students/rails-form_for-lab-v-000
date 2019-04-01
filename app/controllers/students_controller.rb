class StudentsController < ApplicationController 
    def new 
    end
  
    def create 
        @student = Student.create(post_params)
        @student.save 
        redirect_to student_path(@student)
    end
  
    def show 
    end
  
    def edit 
    end
    
    def update 
    end
    private
  def post_params 
    params.require(:student).permit(:first_name, :last_name)
  end
end