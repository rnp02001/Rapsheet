require 'rails_helper'

RSpec.describe Comment, type: :model do

  it "should have a factory" do
    expect(FactoryGirl.build(:comment)).to be_valid
  end

  # Validation Tests
  context "Validations" do
    it "is invalid without a comment body" do
      expect(FactoryGirl.build(:comment, body: nil)).to_not be_valid
    end
  end
  
end
