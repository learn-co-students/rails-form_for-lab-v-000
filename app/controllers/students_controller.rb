class StudentsController < ApplicationController

  def new
    @student = Student.new
  end

  def index
  end

  def create
    #binding.pry
    @student = Student.new
    @student.first_name = params[:student][:first_name]
    @student.last_name = params[:student][:last_name]
    @student.save
    redirect_to student_path(@student)
    #binding.pry
  end

  def show
    #binding.pry
    @student = Student.find_by(params[:id])
  end

  def edit
    #binding.pry
    @student = Student.find_by(params[:id])
  end

  def update
    @student = Student.find(params[:id])
    @student.update(params.require(:student))
    redirect_to student_path(@student)
  end

end
