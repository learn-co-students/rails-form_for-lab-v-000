class SchoolClassesController < ApplicationController
	def index
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
	end
 
private
 
   
  # We pass the permitted fields in as *args;
  # this keeps `post_params` pretty dry while
  # still allowing slightly different behavior
  # depending on the controller action
  def post_params(*args)
    params.require(:post).permit(*args)
  end
  

end



  describe "POST create" do
    context "with valid attributes" do
      it "creates a new school_class" do
        expect{
          post :create, { :school_class => { :title => "Computer Science", :room_number => 5 } }
        }.to change(SchoolClass,:count).by(1)
      end
      
      it "redirects to the new school_class" do
        post :create, { :school_class => { :title => "Computer Science", :room_number => 5 } }
        expect(response).to redirect_to SchoolClass.last
      end
    end
  end








