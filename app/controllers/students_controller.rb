require 'pry'

class StudentsController < ApplicationController

  def index
    @students = Student.all
  end

  def show
    @student = Student.find(params[:id])
  end

  def new
    @student = Student.new
  end

  def created
    @student = Student.find(params[:id])
    @student.save
    redirect_to student_path(@student)
  end

  def update
    @student = Student.find(params[:id])   #  "Adding Post Params Method"
    @student.update(student_params(:first_name, :last_name))  #  Only passing in title for update, no change in description
    redirect_to student_path(@student)
  end

  def edit
  @student = Student.find(params[:id])
  end
end

private

  def student_params(*args)
    params.require(:post).permit(*args)  # *args instead of (:title, :description)
  end
