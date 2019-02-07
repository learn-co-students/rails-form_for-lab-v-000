class StudentsController < ApplciationController

  def show
    @student = Student.find(params[:id])
  end

  def new
    @student = Student.new
  end

  def create
    @student = Student.new
    @student.title = params[:title]
    @student.description = params[:description]
    @student.save
    redirect_to Student_path(@student)
  end

  def edit
    @student = Student.find(params[:id])
  end

  def update
    @student = Student.find(params[:id])
    @student.update(title: params[:Student][:title], description: params[:Student][:description])
    redirect_to Student_path(@student)
  end
end
