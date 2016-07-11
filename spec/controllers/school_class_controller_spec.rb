require 'rails_helper'

RSpec.describe SchoolClassController, :type => :controller do

  describe "GET title:string" do
    it "returns http success" do
      get :title:string
      expect(response).to be_success
    end
  end

  describe "GET room_number:integer" do
    it "returns http success" do
      get :room_number:integer
      expect(response).to be_success
    end
  end

end
