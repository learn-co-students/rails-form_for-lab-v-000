class StudentsController < ApplicationController
  def new
    @student = Student.new
  end

  def create
    @student = Student.new
    @student.last_name = params[:student][:last_name]
    @student.first_name = params[:student][:first_name]
    @student.save
    redirect_to student_path(@student)
  end

  def show
    @student = Student.find_by_id(params[:id])

  end

  def edit
    @student = Student.find_by_id(params[:id])
  end

  def update
    @student = Student.find_by_id(params[:id])
    @student.first_name = params[:student][:first_name]
    @student.last_name = params[:student][:last_name]
    @student.save
    redirect_to student_path(@student)
  end
end
