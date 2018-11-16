class StudentsController < ApplicationController

  def index
    @students = Student.all
  end

  def new
  end

  def create
    @student = Student.create(first_name: params[:first_name], last_name: params[:last_name])
    redirect_to "/students/#{@student.id}"
  end

  def show
  end

  def edit
  end

  def update
  end

end
