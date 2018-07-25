class SchoolClassesController < ApplicationController
	def index
		@school_classes = SchoolClass.all
	end

	def show
		@school_class = SchoolClass.find(params[:id])
	end

	def new
		@school_class = SchoolClass.new
	end

def create
  @school_class = SchoolClass.new(post_params(:title, :description))
  @school_class.save
  redirect_to school_classes_path(@school_classes)
end
 
def update
  @school_class = SchoolClass.find(params[:id])
  @school_class.update(post_params(:title))
  redirect_to school_class_path(@school_class)
end

	def edit
	  @school_class = SchoolClass.find(params[:id])
	end
 
private

  def post_params(*args)
    params.require(:school_class).permit(*args)
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








