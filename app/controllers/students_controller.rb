class StudentsController < ApplicationController
  def index
  end

  def show
    @student = Student.find(params[:id])
  end

  def new
    @student = Student.new #for form_for
  end

  def create
    @student = Student.new(params.require(:student)) #strong params
    @student.save
    redirect_to student_path(@student)
  end

  def edit
    @student = Student.find(params[:id])
  end

  def update
    @student = Student.find(params[:id])
    @student.update(params.require(:student)) #strong params
    redirect_to student_path(@student)
  end
end