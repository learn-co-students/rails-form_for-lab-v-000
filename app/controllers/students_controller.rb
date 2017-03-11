class StudentsController < ApplicationController

  def show
    # binding.pry
    @student = Student.find(params[:id])
  end

  def new
    @student = Student.new

  end

   def create
    @student = Student.new
    @student.first_name = params[:student][:first_name]
	  @student.last_name = params[:student][:last_name]
	  @student.save

    redirect_to student_path(@student)

  end

  def edit
    @student =  Student.find_by(params[:id])
  end

  def update
    @student = Student.find_by(params[:id])
    @student.first_name = params[:student][:first_name]
    @student.last_name = params[:student][:last_name]
    @student.save

    redirect_to student_path(@student)
  end

end
