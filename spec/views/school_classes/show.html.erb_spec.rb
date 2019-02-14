require 'rails_helper'

RSpec.describe "school_classes/show", type: :view do
  before(:each) do
    @school_class = assign(:school_class, SchoolClass.create!(
      :title => "Title",
      :room_number => 2
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Title/)
    expect(rendered).to match(/2/)
  end
end
