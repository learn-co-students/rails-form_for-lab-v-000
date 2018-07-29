class StudentsController < ApplicationController

  def new
    @student = Student.new
  end

  def create
    @student = Student.new(post_params)
    @student.save
    redirect_to student_path(@student)
  end

  def show
    find_student
  end

  def edit
    find_student
  end

  def update
    find_student.update(post_params)
    redirect_to student_path
  end

  private

  def post_params(*args)
    params.require(:student)
  end

  def find_student
    @student = Student.find(params[:id])
  end

end
