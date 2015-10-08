require 'rails_helper'


Rspec.describe User, type: :model do
  it "is created when it has a username, email and password" do
    user = User.new
    expect(project.valid?).to be false
  end
end
