class StudentsController < ApplicationController
  before_action :set_student, only: [:show, :edit, :update]

  def index
    @students = Student.all
  end

  def show
  end

  def new
    @student = Student.new
  end

  def create
    @student = Student.new(params.require(:student))
    @student.save
    render_show
  end

  def edit
  end

  def update
    @student.update(params.require(:student))
    render_show
  end

  private

  def set_student
    @student = Student.find(params[:id])
  end

  def render_show
    redirect_to student_path(@student)
  end
end
