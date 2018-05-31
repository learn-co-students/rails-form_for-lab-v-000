class StudentsController < ApplicationController


  def create
    @student = @student = Student.create(params[:student])
    redirect_to (@student)
  end

end
