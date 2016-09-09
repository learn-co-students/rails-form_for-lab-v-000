class StudentsController < ApplicationController
  def show
    @students = Student.find(params[:id])
  end

  def new
    @students = Student.new
  end

  def create
    @students = Student.create(students_params)
    @students.save
    redirect_to students_path(@students)
  end

  def update
    @students = Student.find(params[:id])
    @students.update(students_params(:title))
    redirect_to students_path(@students)
  end

  def edit
    @students = Student.find(params[:id])
  end

  private

  def students_params(*args)
    params.require(:students).permit(*args)
  end
end
