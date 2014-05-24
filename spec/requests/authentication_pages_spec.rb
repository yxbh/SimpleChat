require 'spec_helper'

describe "Authentication" do

  subject { page }

  describe "signin page" do
    before { visit signin_path }

    it { should have_content('Sign In') }
    it { should have_title('Sign In') }
  end
  
  describe "signin" do
    before { visit signin_path }

    describe "with invalid information" do
      before { click_button "Sign In" }

      it { should have_title('Sign In') }
      it { should have_selector('div.alert.alert-danger') }

      describe "after visiting another page" do
        before { click_link "Home" }
        it { should_not have_selector('div.alert.alert-danger') }
      end
    end
  
  describe "with valid information" do
      let(:user) { FactoryGirl.create(:user) }
      before do
        fill_in "Email",      with: user.email.upcase
        fill_in "Password", with: user.password
        click_button "Sign In"
      end

      it { should have_content(user.name) }
      it { should have_title(user.name) }
      it { should have_link('new room', href: create_path) }
      it { should have_link('Sign out',   href: signout_path) }
      it { should_not have_link('Sign In',  href: signin_path) }
    
    describe "followed by signout" do
        before { click_link "Sign out" }
        it { should have_link('Sign in') }
      end
  end
  end
  
end