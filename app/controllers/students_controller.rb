class StudentsController < ApplicationController

  def new
    
  end

  def create
    @student = Student.new(post_params)
    @student.save
    redirect_to student_path(@student)
  end

  def show
    @student = Student.find_by(id: params[:id])
  end

  def edit
    @student = Student.find_by(id: params[:id])
  end

  def update
    @student = Student.find_by(id: params[:id])
    @student.update(post_params)
    @student.save
    redirect_to student_path(@student) 
  end
  
  private

  def post_params
    params.require(:student).permit(:first_name, :last_name)
  end
  
end