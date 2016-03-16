class StudentsController < ApplicationController

  def index
     @students=Student.all
  end

  def new
    @student=Student.new
  end

  def show
    @student=Student.find(params[:id])
  end

  def create
    @student=Student.create(stud_params)
    redirect_to student_path(@student)
  end

  def edit
    @student=Student.find(params[:id])
  end

  def update
# byebug
    @student=Student.find(params[:id])
    @student.update(stud_params)
    redirect_to student_path(@student)
  end

  private
    def stud_params
      params.require(:student).permit(:first_name, :last_name)
    end

end