require 'rails_helper'

RSpec.describe "school_classes/edit", type: :view do
  before(:each) do
    @school_class = assign(:school_class, SchoolClass.create!(
      :title => "MyString",
      :room_number => 1
    ))
  end

  it "renders the edit school_class form" do
    render

    assert_select "form[action=?][method=?]", school_class_path(@school_class), "post" do

      assert_select "input#school_class_title[name=?]", "school_class[title]"

      assert_select "input#school_class_room_number[name=?]", "school_class[room_number]"
    end
  end
end
