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

private
 
	def student_params
		params.require(:student).permit(:last_name, :first_name)
	end

end
