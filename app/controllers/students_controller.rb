class StudentsController < ApplicationController
  def index
    @students = Student.all
  end

  def new
    @student = Student.new
  end

  def create
    @student = Student.create(params.require(:student))
    @student.save
    redirect_to student_path(@student)
  end

  def show
    find_student
  end

  def edit
    find_student
  end

  def update
    find_student
    @student.update(student_params)
    @student.save
    redirect_to student_path(@student)
  end

  private
    def student_params
      params.require(:student).permit(:first_name, :last_name)
    end

    def find_student
      @student = Student.find(params[:id])
    end
end
