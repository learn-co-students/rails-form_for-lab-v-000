class StudentsController < ApplicationController

  def new
    @student = Student.new
  end

  def create
    # @student = Student.new
    # @student.title = params[:title]
    # @student.description = params[:description]
    # @student.save
    # redirect_to post_path(@student)
    @student = Student.create(first_name: params[:student][:first_name], last_name: params[:student][:last_name])
    redirect_to student_path(@student)
  end

  def edit
    @student = Student.find_by(id: params[:id])
  end

  def show
    @student = Student.find_by(id: params[:id])
  end

  def update
    @student = Student.find_by(params[:id])
    @student.update(params.require(:student).permit(:first_name, :last_name))
    redirect_to student_path(@student)
  end
end
