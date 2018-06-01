class StudentsController < ApplicationController

  def create
    @student = Student.create(params[:student])
    if @student.persisted?
      redirect_to @student
    else
      render 'new'
    end
  end

  def new
    @student = Student.new
  end

  def show
    find_user
  end

  def edit
    find_user
  end

  def update
    find_user
     if @student.update(user_params)
       redirect_to @student
     else
       render 'edit'
     end

  end



  private

  def find_user
    @student = Student.find_by(params[:id])
  end

  def user_params
    params.require(:student).permit(:first_name,:last_name)
  end

end
