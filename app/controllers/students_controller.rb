class StudentsController < ApplicationController

  def show
    @student = Student.find(params[:id])
  end

  def new
    @student = Student.new
  end

  def create
    # @student = Student.new(student_params(:first_name, :last_name))
    @student = Student.new(params.require(:student))
    @student.save
    redirect_to student_path(@student)
  end

  def edit
    @student = Student.find(params[:id])
  end

  def update
    @student = Student.find(params[:id])
    # @student.update(student_params(:first_name, :last_name))
    @student.update(params.require(:student))
    redirect_to student_path(@student)
  end

  ## No need for the private method if there is no limitation
  ## on the params arguments that can be updated.

  # private

  # def student_params(*args)
  #   params.require(:student).permit(*args)
  # end
end