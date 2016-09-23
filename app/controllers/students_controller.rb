class StudentsController < ApplicationController

  # def index
  #   @students = Student.all
  # end
  #
  # def show
  #   @student = Student.find(params[:id])
  # end
  #
  # def new
  #   @student = Student.new
  # end
  #
  def create
    @student = Student.new
    @student.first_name = params[:first_name]
    @student.last_name = params[:last_name]
    @student.save
    redirect_to student_path(@student)
  end
  #
  # def edit
  #   @student = Student.find(params[:id])
  # end
  #
  # def update
  #   @student = Student.find(params[:id])
  #   @student.update(title: params[:title], description: params[:description])
  #   redirect_to student_path(@student)
  # end
  private
    def post_params
      params.require(:student).permit(:first_name, :last_name)
    end

end
