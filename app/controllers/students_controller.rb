class StudentsController < ApplicationController

  def new
    @student = Student.new
  end

  def create
    @student = Student.new(strong_params)
    @student.save

    redirect_to student_path(@student)
  end

  def show
    @student = Student.find(params[:id])
  end

  def edit
    @student = Student.find(params[:id])
  end

  def update
    @student = Student.find(params[:id])
    @student.update(strong_params)
    redirect_to student_path(@student)
  end

  private

    def strong_params
      params.require(:student).permit(:first_name, :last_name)
    end


end
