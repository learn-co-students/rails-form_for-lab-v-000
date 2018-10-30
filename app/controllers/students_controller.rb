class StudentsController < ActionController::Base
  def index
    @students = Student.all
  end

  def show        # show existing student
    @student = Student.find(params[:id])
  end

  def new         # create new student (2 methods)
    @student = Student.new
  end
  def create
    @student = Student.new(params.require(:student).permit(:first_name, :last_name))
    @student.save
    redirect_to student_path(@student)
  end

  def edit        # update existing student (2 methods)
    @student = Student.find(params[:id])
  end
  def update
    @student = Student.find(params[:id])
    @student.update(params.require(:student).permit(:first_name, :last_name))
    redirect_to  student_path(@student)
  end
end
