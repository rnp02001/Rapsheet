require 'rails_helper'

RSpec.feature "sign in process", type: :feature do

  let(:user) { User.create(name: "Mr. Cheezle", email: "mr.cheezle@gmail.com", password: "password123", password_confirmation: "password123") }

  it "signs me in", js: true do
    visit login_path
    fill_in 'Email', with: "#{user.email}"
    fill_in 'Password', with: "#{user.password}"
    click_on 'Log in'

    expect(page)to. have_content 'home/index.html.erb' # syntax error
  end

end
