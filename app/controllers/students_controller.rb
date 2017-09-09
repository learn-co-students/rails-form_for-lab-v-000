class StudentsController < ApplicationController
 
	def index
  @students = Student.all
  end

  def new
  @student = Student.new
  render '/students/new.html'
  end

  def create
  @student = Student.create(post_params)
  redirect_to student_path(@student)
  end

  def show
  @student = Student.find(params[:id])
  render '/students/show.html'
  end

  def edit
  @student = Student.find(params[:id])
  render '/students/edit.html'
  end

  def update
  @student = Student.find(params[:id])
  @student.update(post_params)
  redirect_to student_path(@student)
  end
 
  private
    def post_params
      params.require(:student).permit(:first_name, :last_name)
    end

end