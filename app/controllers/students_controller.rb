class StudentsController < ApplicationController

  def create
    @student = Student.create(params[:student])
    redirect_to student_path(@student)
  end

  def new
  end

  def edit
    find_student
  end

  def show
    find_student
  end

  def update
    find_student
    @student.update(params[:student])
    redirect_to student_path(@student)
  end

  def find_student
    @student = Student.find(params[:id])
  end

end
