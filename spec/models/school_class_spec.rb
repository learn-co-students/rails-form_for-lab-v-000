require 'rails_helper'

describe SchoolClass do
  before(:each) do
    @school_classes = SchoolClass.create!(title: "Computer Science", room_number: 5)
  end

  it 'can be created' do
    expect(@school_classes).to be_valid
  end

end
