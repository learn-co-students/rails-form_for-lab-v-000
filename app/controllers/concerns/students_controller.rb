class StudentsController < ApplicationController
  def index
  end

  def show
  end

  def new
    @student = Student.new
  end

  def create
    @student = Student.create(params[:student])

    redirect_to student_path(@student)
  end

  def edit
  end

  def update
  end
end
