class StudentsController < ApplicationController
  def new
    @student = Student.new
  end

  def create
    s_ = Student.create(student_params)
    redirect_to student_path(s_)
  end

	def show
		@student = Student.find_by_id(params[:id])
	end

	def edit
		@student = Student.find_by_id(params[:id])
	end

	def update
		s_ = Student.find_by_id(params[:id])
		s_.update(params[:student])
		redirect_to student_path(s_)
	end

private
 
	def student_params
		params.require(:student).permit(:last_name, :first_name)
	end

end
