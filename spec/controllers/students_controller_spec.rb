require 'rails_helper'

describe StudentsController do

  describe "POST create" do
    context "with valid attributes" do
      it "creates a new students" do
        expect{
          post :create, { :student => {:first_name => "Bill", :last_name => "Smith" } }
        }.to change(Student,:count).by(1)
      end
      
      it "redirects to the new students" do
        post :create, { :student => {:first_name => "Bill", :last_name => "Smith" } }
        expect(response).to redirect_to Student.last
      end
    end
  end

end