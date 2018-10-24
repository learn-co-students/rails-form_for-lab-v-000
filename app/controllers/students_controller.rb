class StudentsController < ApplicationController
  def index
    @students = Student.all
  end

  def create

  end

  def new
    @student = Student.new
  end

  def student_params(*args)
	  params.require(:student).permit(*args)
  end

end
