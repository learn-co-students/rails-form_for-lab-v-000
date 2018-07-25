class StudentsController < ApplicationController
	def index
		@students = Student.all
	end

	def show
		@student = Student.find(params[:id])
	end

	def new
		@student = Student.new(post_params(:first_name, :last_name))
	end

def create
  @student = new
  @student.save
  redirect_to student_path(@student)
end
 
def update
  @student = Student.find(params[:id])
  @student.update(post_params(:title))
  redirect_to student_path(@student)
end

	def edit
	  @student = Student.find(params[:id])
	end
 
private
 
   
  def post_params(*args)
    params.require(:student).permit(*args)
  end

end

