class StudentsController < ApplicationController

  def show
    @student = Student.find_by(id: params[:id])
  end

  def new
    @student = Student.new
  end

  def create
    @student = Student.new(student_params)
    redirect_to @student if @student.save
  end

  def edit
    @student = Student.find_by(id: params[:id])
  end

  def update
    @student = Student.find_by(id: params[:id])
    redirect_to @student if @student.update(student_params)
  end

  private

    def student_params
      params.require(:student).permit(:first_name, :last_name)
    end

end