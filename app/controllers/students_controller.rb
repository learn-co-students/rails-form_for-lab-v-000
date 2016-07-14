class StudentsController < ApplicationController

  def new
    @student = Student.new
  end

  def create
    @student = Student.create(post_params(:student, :first_name, :last_name))
    redirect_to student_path(@student)
  end

  def show
    find_student
  end

  def edit
    find_student
  end

  def update
    find_student.update(post_params(:student, :first_name, :last_name))
    redirect_to student_path(find_student)
  end

end

private

  def find_student
    @student = Student.find(params[:id])
  end