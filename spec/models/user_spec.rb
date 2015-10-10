require 'rails_helper'

RSpec.describe User, type: :model do
  it "should have a factory" do
    expect(FactoryGirl.build(:user)).to be_valid
  end

  # Validation Tests
  context "Validations" do
    it "is invalid without a username" do
      expect(FactoryGirl.build(:user, username: nil)).to_not be_valid
    end

    it "is invalid without an email" do
      expect(FactoryGirl.build(:user, email: nil)).to_not be_valid
    end

    it "is invalid without a password" do
      expect(FactoryGirl.build(:user, password: nil)).to_not be_valid
    end

    it "is invalid without a password_confirmation" do
      expect(FactoryGirl.build(:user, password_confirmation: nil)).to_not be_valid
    end

    # it "is invalid without a state_id" do
    #   expect(FactoryGirl.build(:user, state_id: nil)).to_not be_valid
    # end
  end
    #Association Tests
    context "Associations" do
      it "can have many comments" do
        user = FactoryGirl.build(:user)
        comment = FactoryGirl.build(:comment)
        user.comments << comment
        user.save # do we need this? Is user not already saved by FactoryGirl.build(:user)?

        expect(user.comments).to include(comment)
      end
    end
end
