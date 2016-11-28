class StudentsController < ApplicationController

  def show
    @student = Student.find(params[:id])
  end

  def new
    @student = Student.new
  end

  def edit
    @student = Student.find(params[:id])
  end

  def update
    @student = Student.find(params[:id])
    @student.update(post_params)
    redirect_to student_path(@student)
  end

  def create
    @student = Student.new(post_params)
    @student.save
    redirect_to student_path(@student)
  end

  def post_params
	  params.require(:student)
	end


end
