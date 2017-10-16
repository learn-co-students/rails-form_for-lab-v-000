class StudentsController < ApplicationController

  def index
  end

  def show
  end

  def new
  end

  def create
    @student = Student.new(post_params(:first_name, :last_name))
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
