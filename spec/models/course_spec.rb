require 'rails_helper'

RSpec.describe Course, type: :model do

  describe "Name validations" do
    it "fails validation if name is not present" do
      course = Course.new
      expect(course.save).to eq(false)
      expect(course.errors).to_not be_nil
      expect(course.errors.messages[:name]).to_not be_nil
    end

    it "passes validation if name is present" do
      course = Course.new(:name => 'Test Course')
      expect(course.valid?).to eq(true)
    end
  end
end
