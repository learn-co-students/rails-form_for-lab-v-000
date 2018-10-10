require 'rails_helper'

RSpec.describe StudentsController, type: :controller do

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

end