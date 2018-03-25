class StudentsController < ApplicationController

  def index
  end

  def show
    set_student
  end

  def new
    @student = Student.new()
  end

  def create
    @student = Student.create(student_params(:first_name, :last_name))
    redirect_to student_path(@student)
  end

  def edit
    set_student
  end

  def update
    set_student
    if !params[:student][:first_name].empty?
      @student.update(student_params(:first_name))
    end
    if !params[:student][:last_name].empty?
      @student.update(student_params(:last_name))
    end
    redirect_to student_path(@student)
  end


  private

  def set_student
    @student = Student.find(params[:id])
  end

  def student_params(*args)
    params.require(:student).permit(:first_name, :last_name)
  end

end
