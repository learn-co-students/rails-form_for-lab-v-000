class Students < ActiveRecord::Base

  def new
    @student = Student.new(post_params(:first_name, :last_name))
  end

  def create
    @student = Student.new(post_params(:first_name, :last_name))
    @student.save
    redirect_to post_path(@student)
  end

  def edit
    @student = Student.find(:id)
  end

  def update
	  @student = Student.find(params[:id])
	  @student.update(post_params(:first_name, :last_name))
	  redirect_to post_path(@student)
	end

	private

	def post_params(*args)
		params.require(:student).permit(*args)
	end

end
