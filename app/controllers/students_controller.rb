class StudentsController < ApplicationController
  def new

  end

  def create
    @student = Student.create(first_name: params[:student_first_name], last_name: params[:student_last_name])
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
    @student.update(params[:student])
    redirect_to student_path(@student)
  end
end
