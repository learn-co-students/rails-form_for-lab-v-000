class StudentsController < ApplicationController
  def create
    @student = Student.create(params.require(:student).permit(:first_name, :last_name))
    @student.save
    redirect_to student_path(@student)
  end

  def new
    @student = Student.new
  end

  def show
    @student = Student.find_by(params[:id])
  end

  def edit
    @student = Student.find_by(params[:id])
  end

  def update
    @student = Student.find_by(params[:id])    #@school_class = SchoolClass.update(params.permit(:title))
    redirect_to student_path(@student)
  end


end