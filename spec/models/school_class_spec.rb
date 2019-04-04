require 'rails_helper'

  describe SchoolClass do
    before(:each) do
      @school_class = SchoolClass.create!(title: "Math", room_number: 102)
    end

    it 'can be created' do
      expect(@school_class).to be_valid
  end
end
