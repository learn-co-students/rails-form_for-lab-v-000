require 'rails_helper'

RSpec.describe "school_classes/new", type: :view do
  before(:each) do
    assign(:school_class, SchoolClass.new(
      :title => "MyString",
      :room_number => 1
    ))
  end

  it "renders new school_class form" do
    render

    assert_select "form[action=?][method=?]", school_classes_path, "post" do

      assert_select "input#school_class_title[name=?]", "school_class[title]"

      assert_select "input#school_class_room_number[name=?]", "school_class[room_number]"
    end
  end
end
