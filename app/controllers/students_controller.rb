class StudentsController < ApplicationController
  def new
  end
  def edit
    @student= Student.find(params[:id])
  end
  def show
    @student= Student.find(params[:id])
  end
  def create
    @student= Student.create(first_name: params[:first_name], last_name: params[:last_name])
  end
  def update
    @student=Student.find(params[:id])
    @student.update(fist_name: params[:first_name], last_name: params[:last_name])
    redirect_to
  end
end
