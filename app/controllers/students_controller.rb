class StudentsController < ApplicationController
  before_action :find_student, only: [:show, :edit, :update]
  before_action :all_students, only: [:index]

  def index
  end

  def create
    @student = Student.create(post_params(:first_name, :last_name))
    redirect_to student_path(@student)
  end

  def new
    @student = Student.new
  end

  def edit
  end

  def show
  end

  def update
    @student.update(post_params(:first_name, :last_name))
    redirect_to student_path(@student)
  end

  private 
    def find_student
      @student = Student.find(params[:id])
    end

    def all_students
      @students = Student.all
    end

    def post_params(*args)
      params.require(:student).permit(*args)
    end

end