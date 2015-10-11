require 'rails_helper'

RSpec.describe Comment, type: :model do

  # Factory Test 
    it "should have a factory" do
      expect(FactoryGirl.build(:comment)).to be_valid
    end

  # Validation Tests
  context "Validations" do
    it "is invalid without a comment body" do
      expect(FactoryGirl.build(:comment, body: nil)).to_not be_valid
    end
  end

  # Association Tests
  context "Associations" do
    it "can belong to a user" do
      user = FactoryGirl.build(:user)
      comment = FactoryGirl.build(:comment)
      user.comments << comment

      expect(comment.user).to eq(user)
    end
  end
end
