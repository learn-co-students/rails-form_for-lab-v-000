class StudentsController < ActionController::Base
  def create
    redirect_to Student.create(params[:student])
  end

  def new
    @student = Student.new
  end

  def edit
    @student= Student.find(params[:id])
  end

  def update
    @student= Student.find(params[:id])
    @student.update(params[:student])
    redirect_to @student
  end

  def show
    @student= Student.find(params[:id])
  end

end
