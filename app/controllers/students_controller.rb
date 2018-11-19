class StudentsController < ActionController::Base

  def index
    @student = Student.all
  end


  def show
    @student = Student.find(params[:id])
  end

def new
  @student = Student.new(student_params.require(:student).permit(:first_name, :last_name))
end


def create
  @student = Student.new(params[:first_name], params[:last_name])
  @student.save
  redirect_to_student_path(@student)
end


def edit
  @student= Student.find(params[:id])
end

private


def student_params(*args)
  params.require(:student).permit(*args)
end



end
