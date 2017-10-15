class StudentsController < ApplicationController
  def index
    @students = Student.all
  end

  def new
    @student = Student.new
  end

  def create
    @student = Student.create(params[:student])
    redirect_to student_path(@student)
  end

  def show
    current_student
  end

  def update
    current_student
    @student.update(params[:student])
    redirect_to student_path(@student)
  end

  def edit
    current_student
  end

  private
    def current_student
      @student = Student.find(params[:id])
    end
end
