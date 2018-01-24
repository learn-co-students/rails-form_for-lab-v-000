class StudentsController < ApplicationController

  def show

  end

  def index
    @students = Student.all
  end

  def new
		@student = Student.new
	end
  
  def create
    @student = Student.create(post_params(:first_name, :last_name))
  end

  def edit
    @student = Student.find(params[:id])
  end

  def update
    @student = Student.find(params[:id])
    @student.update(post_params(:first_name, :last_name))
	  redirect_to student_path(@student)
  end

  private 

	def post_params(*args)
		params.require(:post).permit(*args)
	end
  
end
