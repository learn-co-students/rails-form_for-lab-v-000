class StudentsController < ApplicationController
	def index
<<<<<<< HEAD
		@students = Student.all
	end

	def show
		@student = Student.find(params[:id])
	end

	def new
		@student = Student.new(post_params(:first_name, :last_name))
	end

def create
  @student = new
  @student.save
  redirect_to student_path(@student)
end
 
def update
  @student = Student.find(params[:id])
  @student.update(post_params(:title))
  redirect_to student_path(@student)
end

	def edit
	  @student = Student.find(params[:id])
=======
		@posts = Post.all
	end

	def show
		@post = Post.find(params[:id])
	end

	def new
		@post = Post.new
	end

def create
  @post = Post.new(post_params(:title, :description))
  @post.save
  redirect_to post_path(@post)
end
 
def update
  @post = Post.find(params[:id])
  @post.update(post_params(:title))
  redirect_to post_path(@post)
end

	def edit
	  @post = Post.find(params[:id])
>>>>>>> 9e8804076a29165052036a87656dfef1f42211f9
	end
 
private
 
   
<<<<<<< HEAD
  def post_params(*args)
    params.require(:student).permit(*args)
=======
  # We pass the permitted fields in as *args;
  # this keeps `post_params` pretty dry while
  # still allowing slightly different behavior
  # depending on the controller action
  def post_params(*args)
    params.require(:post).permit(*args)
>>>>>>> 9e8804076a29165052036a87656dfef1f42211f9
  end

end

<<<<<<< HEAD
=======

  describe "POST create" do
    context "with valid attributes" do
      it "creates a new student" do
        expect{
          post :create, { :student => { :first_name => "Bill", :last_name => "Smith" } }
        }.to change(Student,:count).by(1)
      end
      
      it "redirects to the new student" do
        post :create, { :student => { :first_name => "Bill", :last_name => "Smith" } }
        expect(response).to redirect_to Student.last
      end
    end
  end
>>>>>>> 9e8804076a29165052036a87656dfef1f42211f9
