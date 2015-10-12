require 'rails_helper'

RSpec.describe UsersController, type: :controller

  context "Controllers" do
    describe "Anonymous User" do
      before :each do
        # This simulates an anonymous user
        login_with nil
      end

      it "should be redirected to signin" do
        get :index
        expect( response ).to redirect_to( new_user_registration_path )
      end

      # we do not want a User to see all users
      # a user should be able to see her profile
      it "should let a user see their profile" do
        login_with create( :user )
        get :index
        expect( response ).to render_template( :index )
      end
    end
  end
