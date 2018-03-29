require 'rails_helper'

RSpec.describe Student, type: :model do
  before(:each) do
    @student = Student.create!(first_name: "Will", last_name: "Douglass")
  end

  it 'can be created' do
    expect(@student).to be_valid
  end
end
