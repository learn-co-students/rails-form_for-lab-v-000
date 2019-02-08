class StudentsController < ApplicationController

  def index
    @students = Student.all
  end

  def new
    @student = Student.new
  end

  def create
    @student = Student.new(student_params(:first_name, :last_name))
    @student.save
    redirect_to student_path(@student)
  end

  def show
    # @student = Student.find_by(params[:id])
    get_student
  end

  def edit
    # @student = Student.find_by(params[:id])
    get_student
  end

  def update
    # @student = Student.find(params[:id])
    get_student
    @student.update(student_params(:first_name, :last_name))
    redirect_to student_path(@student)
  end

  private

    def student_params(*args)
      params.require(:student).permit(*args)
    end

    def get_student
      @student = Student.find_by(params[:id])
    end

end
