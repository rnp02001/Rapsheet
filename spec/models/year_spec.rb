require 'rails_helper'

RSpec.describe Year, type: :model do

  # Factory Test
  it "should have a factory" do
    expect(FactoryGirl.build(:year)).to be_valid
  end
end
