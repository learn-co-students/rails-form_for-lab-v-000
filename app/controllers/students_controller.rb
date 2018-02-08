class StudentsController < ApplicationController

  def index
  end

  def show
  end

  def new
  end

  def create
    @student=Student.new(student_params(:first_name, :last_name))
    @student.save
    redirect_to student_path(@student)
  end

  def update
  end

  def edit
  end

  private

  def student_params(*args)
    params.require(:student).permit(*args)
  end

end
