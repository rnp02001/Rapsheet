require 'rails_helper'

RSpec.describe Crime, type: :model do

  # Factory Test
  it "should have a factory" do
    expect(FactoryGirl.build(:crime)).to be_valid
  end
end
