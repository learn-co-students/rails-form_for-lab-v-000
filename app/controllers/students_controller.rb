class StudentsController < ApplicationController

  def index
    @students = Student.all
  end

  def new
    @student = Student.new(params[:student])
  end

#   Within Rails' implementation of REST new and create are treated differently.
#
#   An HTTP GET to /resources/new is intended to render a form suitable for
#   creating a new resource, which it does by calling the new action within the
#   controller, which creates a new unsaved record and renders the form.
#
#   An HTTP POST to /resources takes the record created as part of the new action
#   and passes it to the create action within the controller, which then attempts
#   to save it to the database.

  def create
    @student = Student.new(student_params)
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
    @student.update(student_params)
    redirect_to student_path(@student)
  end

private

  def student_params
    params.require(:student).permit(:first_name, :last_name)
  end

end
