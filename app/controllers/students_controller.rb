class StudentsController < ApplicationController

  def show
    @student = Student.find(params[:id])
  end

  def new
    @student = Student.new
  end
  #
  def create
    @student = Student.new
    @student.first_name = params[:first_name]
    @student.last_name = params[:last_name]
    @student.save
    redirect_to student_path(@student)
  end


  private
    def post_params
      params.require(:student).permit(:first_name, :last_name)
    end

end
