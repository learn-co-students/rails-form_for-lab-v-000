
require 'rails_helper'


describe SchoolClass do
  before(:each) do
    @school_class = SchoolClass.create!(title: "Web development", room_number: 22)
  end

  it 'can be created' do
    expect(@school_class).to be_valid
  end

end
