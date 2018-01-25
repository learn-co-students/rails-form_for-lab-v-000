class StudentsController < ApplicationController
  def new
  end

  def create
    @student = Student.new(params[:student])
    if @student.save
      redirect_to student_path(@student)
    else
      #error goes here
    end
  end

  def edit
  end

  def update
  end
end
