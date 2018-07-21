class StudentsController < ApplicationController

  def to_s
    self.first_name + ' ' + self.last_name
  end

  def index
    @students = Student.all
  end

  def show
    @student = Student.find(params[:id])
  end

  def new
    @student = Student.new
  end

  def edit

  def create
    student = Student.create(:first_name => params[:student][:first_name], :last_name => params[:student][:last_name])
    redirect_to student_path(student)
  end

  def update
    @student = Stuent.find(params[:student][:id])
	  @student.update(params[:student])
	  redirect_to post_path(@student)
  end

end
