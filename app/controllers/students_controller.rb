class StudentsController < ApplicationController

  def new
    @student = Student.new
    #must have this so form isn't read as nil
  end

  def show
    @student = student_finder
  end

  def create
    @student = Student.new(student_params(:first_name, :last_name))
    @student.save
    redirect_to student_path(@student)
  end

  def edit
    @student = student_finder
  end

  def update
    @student = student_finder
    @student.update(student_params(:first_name, :last_name))
    redirect_to student_path(@student)
  end

  private

  def student_finder
    Student.find(params[:id])
  end
 
  def student_params(*args)
    params.require(:student).permit(*args)
  end

end
