require 'rails_helper'

RSpec.describe User, type: :model do
  it "should have a factory" do
    expect(FactoryGirl.build(:user)).to be_valid
  end

  # Validation Tests
  context "validations" do
    it "is invalid without a password_confirmation" do
      expect(FactoryGirl.build(:user, username: nil)).to_not be valid
    end

    it "is invalid without an email" do
      expect(FactoryGirl.build(:user, email: nil)).to_not be valid
    end

    it "is invalid without a password" do
      expect(FactoryGirl.build(:user, password: nil)).to_not be valid
    end

    it "is invalid without a password_confirmation" do
      expect(FactoryGirl.build(:user, password_confirmation: nil)).to_not be valid
    end

    it "is invalid without created_at time" do
      expect(FactoryGirl.build(:user, created_at: nil)).to_not be valid
    end

    it "is invalid without updated_at time" do
      expect(FactoryGirl.build(:user, updated_at: nil)).to_not be valid
    end

    it "is invalid without a state_id" do
      expect(FactoryGirl.build(:user, state_id: nil)).to_not be valid
    end
  end
end
