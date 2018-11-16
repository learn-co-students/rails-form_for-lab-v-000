class StudentsController < ApplicationController

  def index
    @students = Student.all
  end

  def new
    @student = Student.new
  end

  def create
    @student = Student.create(first_name: params[:student][:first_name], last_name: params[:student][:last_name])
    redirect_to "/students/#{@student.id}"
  end

  def show
    @student = Student.find_by(params[:id])
  end

  def edit
    @student = Student.find_by(params[:id])
  end

  def update
      @student = Student.find(params[:id])
      @student.update(first_name: params[:student][:first_name], last_name: params[:student][:last_name])
      redirect_to student_path(@student)
    end

end
