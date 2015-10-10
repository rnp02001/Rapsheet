require 'rails_helper'

RSpec.describe Comment, type: :model do

  it "should have a factory" do
    expect(FactoryGirl.build(:comment)).to be_valid
  end

  

end
