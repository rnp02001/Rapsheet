require 'rails_helper'

RSpec.describe User, type: :model do

  it "is valid with a username, password, and email address"
    expect(@user).to be_valid
  end

  it "has many comments" do
    first_comment = Comment.create(user_id: :@user_id, comment_id: :@comment_id)
    last_comment = Comment.create(user_id: :@user_id, comment_id: :@comment_id) # this is super stinky
    expect(@user.comments.first).to eq(first_comment)
    expect(@user.comments.first).to eq(second_comment)
  end

end
