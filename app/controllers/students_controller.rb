class StudentsController < ApplicationController

def index
  @students = Student.all
end

def new
  @student = Student.new
end

def create
  @student = Student.create(params[:student])
  redirect_to student_url(@student.id)
end

def update
  @student = Student.find_by_id(params[:id])
  @student.update_attributes!(params[:student])
  redirect_to student_url(@student.id)
end

def edit
  @student = Student.find_by_id(params[:id])
end

def show
  @student = Student.find(params[:id])
end

end
