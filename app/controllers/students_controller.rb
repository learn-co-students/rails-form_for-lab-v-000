require 'pry'

class StudentsController < ApplicationController
  # before_action :set_student, only: [:show, :edit, :update, :destroy]

  def index
    @student = Student.all
  end

  def show
    @student = Student.find(params[:id])
  end

  def new
    @student = Student.new
  end

  def edit
    @student = Student.find(params[:id])
  end

  def create
    @student = Student.create(student_params)
    redirect_to student_path(@student)
  end

  def update
    @student = Student.find(params[:id])
    @student.update(student_params)
    redirect_to student_path(@student)
  end


  private
    # def set_student
    #   @student = Student.find(params[:id])
    # end

    def student_params
      params.require(:student).permit(:first_name, :last_name)
    end
end
