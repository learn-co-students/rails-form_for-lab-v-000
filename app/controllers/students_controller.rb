class StudentsController < ApplicationController

  def create
    @student = Student.create(params[:student])
    redirect_to (@student)
  end

end
