class StudentsController < ApplicationController

  def new
  end

  def create
    @student = Student.new(post_params)
    @student.save
    redirect_to student_path(@student)
  end

  def edit
  end

  def update
  end

  private

  def post_params(*args)
    params.require(:student).permit(*args)
  end
end
