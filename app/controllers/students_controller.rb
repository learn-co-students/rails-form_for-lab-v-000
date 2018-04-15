class StudentsController < ApplicationController

  def show
    @student = set_student
  end


  def new
    @student = Student.new
  end

  def create
    @student = Student.new(params.require(:student))
    @student.save
    redirect_to student_path(@student)
  end


  def edit
    @student = set_student
  end

  def update
    @student = set_student
    @student.update(params.require(:student))
    redirect_to student_path(@student)
  end


  private
    def set_student
      @student = Student.find_by(params[:id])
    end




end
