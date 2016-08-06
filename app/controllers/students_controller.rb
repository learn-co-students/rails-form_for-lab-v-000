class StudentsController < ApplicationController
  def create
    @student = Student.new(params.require(:students).permit(:first_name, :last_name))
    @student.save
    redirect_to school_class_path(@student)
  end
end