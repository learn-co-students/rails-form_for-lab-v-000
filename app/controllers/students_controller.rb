class StudentsController < ApplicationController

  def new
    @student = Student.new
  end

  def create
    @student = Student.create(params[:student])
    redirect_to student_path(@student)
  end

  def index

  end

  def show
    @student = Student.find(params[:id])
  end

  def update
    @student = Student.find(params[:id])
    @student.update(params[:student])
    redirect_to student_path(@student)
  end

  def edit
    @student = Student.find(params[:id])
  end

end
