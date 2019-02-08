class StudentsController < ApplicationController

  def index
    @students = Student.all
  end

  def new
    @student = Student.new
  end

  def create
    @student = Student.new(student_params)
    @student.save
    redirect_to student_path(@student)
  end

  def show

  end

  def edit
    
  end

  def update
    @student = Student.find(params[:id])
    @student.update
    redirect_to student_path(@student)
  end

  private

    def student_params(*args)
      params.require(:student).permit(*args)
    end

end
