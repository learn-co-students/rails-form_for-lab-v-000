class StudentsController < ApplicationController

  def index
    @students = Student.all
    # renders a index page
  end

  def show
    @student = Student.find(params[:id])
    # renders a show page
  end

  def new
    @student = Student.new
    # renders a create page
  end

  def create
    @student = Student.create(student_params)
    redirect_to student_path(@student)
    # routes to show page
  end

  def edit
    @student = Student.find(params[:id])
    # renders a update page
  end

  def update
    @student = Student.find(params[:id])
    @student.update(student_params)
    redirect_to student_path(@student)
    # routes to show page
  end

  private
  def student_params
    params.require(:student)
  end
end
