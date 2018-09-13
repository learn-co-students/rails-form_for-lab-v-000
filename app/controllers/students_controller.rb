class StudentsController < ApplicationController
  def new
    @student = Student.new
  end

  def create
    @student = Student.new 
    @student.first_name = params[:student][:first_name]
    @student.last_name = params[:student][:last_name]
    @student.save
    redirect_to student_path(@student) 
    @student here redirect to the show method becasue it has an "id" 
  end
  

  def show
    @student = Student.find(params[:id])

  end

  def edit
    @student = Student.find(params[:id])

  end

  def update
    @student = Student.find(params[:id])
		@student.update(params.require(:student))
	  redirect_to student_path(@student)

  end

end # end of the class method.
