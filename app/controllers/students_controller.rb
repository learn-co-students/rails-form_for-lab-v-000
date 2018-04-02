class StudentsController < ApplicationController
  def new
    @student = Student.new
  end

  def create
    @student = Student.new(student_params(:first_name, :last_name))
    @student.save
    redirect_to student_path(@student)
  end

  def show
    @student = found_params
  end

  def edit
    @student = found_params
  end

  def update
    @student = found_params
    @student.update(student_params(:first_name, :last_name))
  end

  private

	def student_params(*args)
		params.require(:student).permit(*args)
	end

    def found_params
      Student.find(params[:id])
    end
end
