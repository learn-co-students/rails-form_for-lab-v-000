class StudentsController < ApplicationController
  def index
    @students = Student.all
  end

  def show
    the_student
  end

  def new
    @student = Student.new
  end

  def create
    # binding.pry
    @student = Student.new(param(:first_name, :last_name))
    @student.save
    redirect_to student_path(@student)
  end

  def edit
    the_student
  end

  def update
    the_student
    the_student.update(param(:first_name, :last_name))
    redirect_to student_path(the_student)
  end

  private

  def the_student
    @student = Student.find(params[:id])
  end

  def param(*arg)
    params.require(:student).permit(*arg)
  end
end
