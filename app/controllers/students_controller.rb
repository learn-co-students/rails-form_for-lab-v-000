class StudentsController < ApplicationController
  def new
    
  end

  def create
    #when you use form_tag in the view form you dont need to have the params as #[:student_classes][:title] just [:title] works.
    #This matches the params created in the student new view
    @student = Student.create(first_name: params[:first_name], last_name: params[:last_name])
    redirect_to student_path(@student.id)
  end

  def index
    @students = Student.all
  end

  def show
    @student = Student.find_by(params[:id])
  end

  def edit
    @student = Student.find_by(params[:id])
  end
end
