class StudentsController < ApplicationController
  def index
		@student = Student.all
	end

	def show
		@student = Student.find(params[:id])
	end

  def new
		@student = Student.new
	end

  def create
    @student = Student.new(params[:student])
	  @student.save
	  redirect_to student_path(@student)
  end

  def edit
	  @student = Student.find(params[:id])
	end

	def update
	  @student = Student.find(params[:id])
	  # @school_classes.update(school_classes_params)
    redirect_to student_path(@student)
	end

end
