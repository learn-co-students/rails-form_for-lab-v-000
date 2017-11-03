class StudentsController < ApplicationController
  before_action :set_student, only: :show
#Build out the new, create, show, edit, and update actions in each of the controllers.
  def new
    @student = Student.new
  end

  def create
    #@student = Student.new(params.require(:student)
    @student = Student.new(params.require(:student).permit(:first_name, :last_name))
    #@student = Student.new(student_params(:first_name, :last_name))
    @student.save
    redirect_to student_path(@student)
    #redirect_to students_path(@student)
  end

  def show
    @student = Student.find(params[:id])
  end

  def edit
    @student = Student.find(params[:id])
  end

  def update
    @student = Student.find(params[:id])
    @student.update(params.require(:student).permit(:first_name, :last_name))
    #@student.update(params.require(:student)
    redirect_to student_path(@student)
    #redirect_to students_path(@student)
  end

private

  # We pass the permitted fields in as *args;
  # this keeps `post_params` pretty dry while
  # still allowing slightly different behavior
  # depending on the controller action
  def post_params(*args)
    params.require(:student).permit(*args)
  end

  def set_student
    @student = Student.find(params[:id])
  end
end
