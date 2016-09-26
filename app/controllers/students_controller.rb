class StudentsController < ApplicationController
  def new
    @student = Student.new
  end

  def create
    if params[:first_name] != "" || params[:first_name] != nil
      if params[:last_name] != "" || params[:last_name] != nil
        @student = Student.create(params.require(:student).permit(:first_name, :last_name))
        @student.save
        redirect_to student_path(@student)
      end
    end
  end

  def show
    @student = Student.find(params[:id])
  end

  def edit
    @student = Student.find(params[:id])
  end

  def update
    @student = Student.find(params[:id])
    @student.update(params.require(:student))
    redirect_to student_path(@student)
  end

end
