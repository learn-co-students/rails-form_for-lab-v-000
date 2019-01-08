require 'rails_helper'

describe SchoolClass do
  before(:each) do
    @school_class = SchoolClass.create!(title: "Software Engineering", room_number: 10)
  end

  it 'can be created' do
    expect(@school_class).to be_valid
  end

end
